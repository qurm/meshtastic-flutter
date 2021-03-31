// @dart=2.9
import 'dart:convert';

import '../bluetooth/bluetooth.dart';
import '../proto/proto.dart';
import 'mesh_api.dart';

///  Given an array of PSK bytes, decode them into a human readable (but privacy protecting) string.
String pskToString(List<int> psk) {
  if (psk.isEmpty) {
    return 'unencrypted';
  } else if (psk.length == 1) {
    final b = psk[0];
    if (b == 0)
      return 'unencrypted';
    else if (b == 1)
      return 'default';
    else
      return 'simple${b - 1}';
  } else
    return 'secret';
}

/// Class for addtional specific methods for a Mesh Node.
///
/// MeshNode has Meshtastic methods, whereas MeshDevice has BLE/GATT methods.
/// A model of a (local or remote) node in the mesh
/// Includes methods for radioConfig and channels
/// Node has iface which is BLEInterface, extends MeshInterface
/// Node is instantiated by MeshInterface, which instantiated as BLEInterface from
///  repo meshServiceStart
class MeshNode {
  MeshNode(this.iface, this.nodeNum) {
    appLogger
        .i('MeshNode constructor: ${iface.device.id} ${iface.device.hashCode}');
  }

  /// interface for Node, normally the Mesh, BLEInterface
  MeshInterface iface;

  /// identifier for this node, local or remote
  int nodeNum;

  /// [radioConfig] - Current radio configuration and device settings, if you
  /// write to this the new settings will be applied to the device.
  RadioConfig radioConfig;

  /// actual channels available on Node
  List<Channel> channels = [];
  List<Channel> partialChannels = [];

  // def showInfo(self):
  //     // print(self.radioConfig)
  //     // print("Channels:")
  //     for c in self.channels:
  //         if c.role != channel_pb2.Channel.Role.DISABLED:
  //             cStr = MessageToJson(c.settings).replace("\n", "")
  //             print(f"  {channel_pb2.Channel.Role.Name(c.role)} {cStr}")
  //     print(f"\nChannel URL {self.channelURL}")

  /// Show/log human readable description of our node.
  void showInfo() {
    userLogger
        .i('showInfo radioConfig: ${radioConfig.preferences.toProto3Json()}');
    showChannels();
  }

  /// Show/log human readable description of our channels
  void showChannels() {
    userLogger.i('showChannels Channels:');
    for (final c in channels) {
      if (c.role != Channel_Role.DISABLED) {
        var cStr = c.settings.toProto3Json();
        userLogger
            .i(' ${c.role.name} psk=${pskToString(c.settings.psk)} $cStr');
      }
    }
  }

  // def requestConfig(self):
  //     """
  //     Send regular MeshPackets to ask for settings and channels
  //     """
  //     self.radioConfig = None
  //     self.channels = None
  //     self.partialChannels = []  # We keep our channels in a temp array until finished
  //     self._requestSettings()

  /// Initialise Node radioconfig and channels from the mesh.
  ///
  /// Uses regular MeshPackets to ask for settings and channels.
  /// Called on Interface handleConfigComplete when configCompleteId received.
  Future<void> requestConfig() async {
    // radioConfig.preferences will be an immutable default value, so
    // https://github.com/dart-lang/protobuf/issues/305
    radioConfig = RadioConfig()
      ..preferences = RadioConfig_UserPreferences(); // avoid null
    channels = []; //empty list, avoid null
    partialChannels = []; // keep our channels in a temp array until finished
    await _requestSettings();
  }

/* 
  def waitForConfig(self, maxsecs=20):
      """Block until radio config is received. Returns True if config has been received.
      return waitForSet(self, attrs=('radioConfig', 'channels'), maxsecs=maxsecs)
 */

  /// waitForConfig - not required in flutter (ported from Python)
  /// (self, sleep=0.1, maxsecs=20, attrs=('myInfo', 'nodes', 'radioConfig'))
  /// Block until radioConfig is received. Returns True if config has been received.
  bool waitForConfig({num sleep = .1, int maxsecs = 20, List attrs}) {
    for (var i = 1; i <= (maxsecs ~/ sleep); i++) {
      // check that these object.properties exist 'myInfo', 'nodes', 'radioConfig'
      // if (all(map(lambda a: getattr(self, a, None), attrs)))
      //     {return true;}
      // time.sleep(sleep);
    }
    return false;
  }

/*   
def writeConfig(self):
      """Write the current (edited) radioConfig to the device"""
      if self.radioConfig == None:
          raise Exception("No RadioConfig has been read")

      p = admin_pb2.AdminMessage()
      p.set_radio.CopyFrom(self.radioConfig)

      self._sendAdmin(p)
      logging.debug("Wrote config") 
*/

  /// Write the current (edited) [radioConfig] to the device.
  ///
  /// AF (ported from Python) 14/03/21 now in Node
  Future<void> writeConfig() async {
    userLogger.i('Node.writeConfig called ');
    if (!radioConfig.isInitialized()) {
      throw Exception('Node.writeConfig RadioConfig has been read');
    }
    final p = AdminMessage();
    p.setRadio = radioConfig;
    await _sendAdmin(p: p);
  }
/* 
  def writeChannel(self, channelIndex):
      """Write the current (edited) channel to the device"""

      p = admin_pb2.AdminMessage()
      p.set_channel.CopyFrom(self.channels[channelIndex])

      self._sendAdmin(p)
      logging.debug("Wrote channel {channelIndex}")
*/

  /// Write the current (edited) channel to the device.
  void writeChannel(int channelIndex, {int adminIndex = 0}) {
    final p = AdminMessage();
    p.setChannel = channels[channelIndex];
    _sendAdmin(p: p, adminIndex: adminIndex);
    appLogger.i('MeshNode.writeChannel Wrote channel: ${channelIndex}');
  }

/* 
  def getChannelByName(self, name):
      """Try to find the named channel or return None"""
      for c in (self.channels or []):
          if c.settings and c.settings.name == name:
              return c
       return None
*/

  ///Try to find the named channel or return null or Empty Channel?
  ///USE NULLS or the Dartz LEft,Rigt
  Channel getChannelByName(String name) {
    for (final c in channels) {
      if (c.hasSettings() && c.settings.name == name) return c;
    }
    return Channel(); //or null?
  }

/* 
  def getDisabledChannel(self):
      """Return the first channel that is disabled (i.e. available for some new use)"""
      for c in self.channels:
          if c.role == channel_pb2.Channel.Role.DISABLED:
              return c
      return None
 */

  /// Return the first channel that is disabled (i.e. available for some new use)
  Channel getDisabledChannel() {
    for (final c in channels) {
      if (c.role == Channel_Role.DISABLED) return c;
    }
    return Channel(); //or null?
  }

/* 
  def _getAdminChannelIndex(self):
      """Return the channel number of the admin channel, or 0 if no reserved channel"""
      c = self.getChannelByName("admin")
      if c:
          return c.index
      else:
          return 0
 */

  ///Return the channel number of the admin channel, or 0 if no reserved channel
  int _getAdminChannelIndex() {
    final c = getChannelByName('admin');
    if (c.index is int)
      return c.index;
    else
      return 0; //initially single Channel  name is '', index 0, DISABLED
  }

  /* def setOwner(self, long_name, short_name=None):
      """Set device owner name"""
      nChars = 3
      minChars = 2
      if long_name is not None:
          long_name = long_name.strip()
          if short_name is None:
              words = long_name.split()
              if len(long_name) <= nChars:
                  short_name = long_name
              elif len(words) >= minChars:
                  short_name = ''.join(map(lambda word: word[0], words))
              else:
                  trans = str.maketrans(dict.fromkeys('aeiouAEIOU'))
                  short_name = long_name[0] + long_name[1:].translate(trans)
                  if len(short_name) < nChars:
                      short_name = long_name[:nChars]

      p = admin_pb2.AdminMessage()

      if long_name is not None:
          p.set_owner.long_name = long_name
      if short_name is not None:
          short_name = short_name.strip()
          if len(short_name) > nChars:
              short_name = short_name[:nChars]
          p.set_owner.short_name = short_name

      return self._sendAdmin(p)
*/

  ///Set device owner name
  /////TODO test this logic - write a test?
  // AF 20/3/2021 change to Future async, as _sendToRadio is async write
  Future<MeshPacket> setOwner(String longName, {String shortName = ''}) async {
    const nChars = 3;
    const minChars = 2;
    if (longName.isNotEmpty) {
      longName = longName.trim();
      if (shortName.isEmpty) {
        final words = longName.split(' ');
        if (longName.length <= nChars) {
          shortName = longName;
        } else {
          if (words.length >= minChars)
            shortName = ''; // ''.join(map(lambda word: word[0], words))}
          else {
            shortName =
                longName[0] + longName.replaceAll(RegExp('[aeiouAEIOU]'), '');
            if (shortName.length < nChars)
              shortName = longName.substring(0, nChars);
          }
        }
      }
    }

    final p = AdminMessage();

    if (longName.isNotEmpty) p.setOwner.longName = longName;
    if (shortName.isNotEmpty) {
      shortName = shortName.trim();
      if (shortName.length > nChars) shortName = shortName.substring(0, nChars);
      p.setOwner.shortName = shortName;
    }
    return await _sendAdmin(p: p);
  }

/*
  @property
  def channelURL(self):
      """The sharable URL that describes the current channel
      """
      # Only keep the primary/secondary channels, assume primary is first
      channelSet = apponly_pb2.ChannelSet()
      for c in self.channels:
          if c.role != channel_pb2.Channel.Role.DISABLED:
              channelSet.settings.append(c.settings)
      bytes = channelSet.SerializeToString()
      s = base64.urlsafe_b64encode(bytes).decode('ascii')
      return f"https://www.meshtastic.org/d/#{s}".replace("=", "")
*/

  /// The sharable URL that describes the current channel
  String channelURL() {
    //Only keep the primary/secondary channels, assume primary is first
    final channelSet = ChannelSet();
    for (final c in channels) {
      if (c.role != Channel_Role.DISABLED) channelSet.settings.add(c.settings);
    }
    final bytes = channelSet.writeToBuffer();
    final str = base64UrlEncode(bytes)
        .replaceAll('=', ''); //result is ASCII string - need to test
    return 'https://www.meshtastic.org/d/#${str}';
  }

/*
  def setURL(self, url):
      """Set mesh network URL"""
      if self.radioConfig == None:
          raise Exception("No RadioConfig has been read")

      # URLs are of the form https://www.meshtastic.org/d/#{base64_channel_set}
      # Split on '/#' to find the base64 encoded channel settings
      splitURL = url.split("/#")
      b64 = splitURL[-1]

      # We normally strip padding to make for a shorter URL, but the python parser doesn't like
      # that.  So add back any missing padding
      # per https://stackoverflow.com/a/9807138
      missing_padding = len(b64) % 4
      if missing_padding:
          b64 += '=' * (4 - missing_padding)

      decodedURL = base64.urlsafe_b64decode(b64)
      channelSet = apponly_pb2.ChannelSet()
      channelSet.ParseFromString(decodedURL)

      i = 0
      for chs in channelSet.settings:
          ch = channel_pb2.Channel()
          ch.role = channel_pb2.Channel.Role.PRIMARY if i == 0 else channel_pb2.Channel.Role.SECONDARY
          ch.index = i
          ch.settings.CopyFrom(chs)
          self.channels[ch.index] = ch
          self.writeChannel(ch.index)
          i = i + 1
          */

  /// Set mesh network URL, converts base 64 string url into [channelSet]
  void setURL(String url) {
    if (radioConfig.isInitialized())
      throw Exception("No RadioConfig has been read");

    //URLs are of the form https://www.meshtastic.org/d/#{base64_channel_set}
    // Split on '/#' to find the base64 encoded channel settings
    final splitURL = url.split('/#');
    var b64 = splitURL.last;

    // We normally strip padding to make for a shorter URL, but the python parser doesn't like
    // that.  So add back any missing padding
    // per https://stackoverflow.com/a/9807138
    final missingPadding = b64.length % 4;
    if (missingPadding != 0) b64 += '=' * (4 - missingPadding);

    final decodedURL = base64Url.decode(b64);
    final channelSet = ChannelSet();
    channelSet.mergeFromBuffer(decodedURL);

    var i = 0;
    for (final chs in channelSet.settings) {
      final ch = Channel();
      if (i == 0)
        ch.role = Channel_Role.PRIMARY;
      else
        ch.role = Channel_Role.SECONDARY;
      ch.index = i;
      ch.settings = chs;
      channels[ch.index] = ch;
      writeChannel(ch.index);
      i = i + 1;
    }
  }
/*
  def _requestSettings(self):
      """
      Done with initial config messages, now send regular MeshPackets to ask for settings
      """
      p = admin_pb2.AdminMessage()
      p.get_radio_request = True
 */

  /// Done with initial config messages, now send regular MeshPackets to ask for settings.
  ///
  Future<void> _requestSettings() async {
    final p = AdminMessage();
    p.getRadioRequest = true;

    //     def onResponse(p):
    //         """A closure to handle the response packet"""
    //         self.radioConfig = p["decoded"]["admin"]["raw"].get_radio_response
    //         logging.debug("Received radio config, now fetching channels...")
    //         self._requestChannel(0) # now start fetching channels

    // return _sendAdmin(p: p, wantResponse: true, onResponse: onResponse);

    ///A closure/function to handle the response packet
    /// AF 20/3/2021 change to Future async, as _sendToRadio is async write
    // Future<MeshPacket> onResponse(AdminMessage p) async {
    //   // radioConfig = p["decoded"]["admin"]["raw"].get_radio_response;
    //   //TODO is this ported OK?
    //   radioConfig = p.getRadioResponse;
    //   // logging.debug("Received radio config, now fetching channels...")
    //   _requestChannel(0); //now start fetching channels
    // }
    final meshPacket = await _sendAdmin(
      p: p,
      wantResponse: true,
    );
    if (meshPacket.decoded.portnum == PortNum.ADMIN_APP) {
      radioConfig = RadioConfig.fromBuffer(meshPacket.decoded.payload);
      appLogger
          .i('_requestSettings Received radio config, now fetching channels..');
      await _requestChannel(0); //now start fetching channels
    } else
      appLogger.wtf('_requestSettings Received unexpected!!');
  }
/* 
  def _requestChannel(self, channelNum: int):
      """
      Done with initial config messages, now send regular MeshPackets to ask for settings
      """
      p = admin_pb2.AdminMessage()
      p.get_channel_request = channelNum + 1
      logging.debug(f"Requesting channel {channelNum}")

      def onResponse(p):
          """A closure to handle the response packet"""
          c = p["decoded"]["admin"]["raw"].get_channel_response
          self.partialChannels.append(c)
          logging.debug(f"Received channel {stripnl(c)}")
          index = c.index

          # for stress testing, we can always download all channels
          fastChannelDownload = True

          # Once we see a response that has NO settings, assume we are at the end of channels and stop fetching
          quitEarly = (
              c.role == channel_pb2.Channel.Role.DISABLED) and fastChannelDownload

          if quitEarly or index >= self.iface.myInfo.max_channels - 1:
              logging.debug("Finished downloading channels")

              # Fill the rest of array with DISABLED channels
              index += 1
              while index < self.iface.myInfo.max_channels:
                  ch = channel_pb2.Channel()
                  ch.role = channel_pb2.Channel.Role.DISABLED
                  ch.index = index
                  self.partialChannels.append(ch)
                  index += 1

              self.channels = self.partialChannels
              # FIXME, the following should only be called after we have settings and channels
              self.iface._connected()  # Tell everone else we are ready to go
          else:
              self._requestChannel(index + 1)

      return self._sendAdmin(p,
                             wantResponse=True,
                             onResponse=onResponse)
 */

  /// Done with initial config messages, now send regular MeshPackets to ask for settings
  Future<void> _requestChannel(int channelNum) async {
    final p = AdminMessage();
    p.getChannelRequest = channelNum + 1;
    appLogger.d('_requestChannel Requesting channel ${channelNum}');

    /// A closure to handle the response packet - we use async await instead.
    /// AF 20/3/2021 change to Future async, as _sendToRadio is async write
/*     Future<MeshPacket> onResponse(AdminMessage p) async {
      // c = p["decoded"]["admin"]["raw"].get_channel_response
      final c = p.getChannelResponse;
      partialChannels.add(c);
      appLogger.d('Received channel ${c.toString()}');
      int index = c.index;

      // # for stress testing, we can always download all channels
      var fastChannelDownload = true;

      //  Once we see a response that has NO settings, assume we are at the end of channels and stop fetching
      var quitEarly = (c.role == Channel_Role.DISABLED) && fastChannelDownload;

      if (quitEarly || (index >= iface.myInfo.maxChannels - 1)) {
        appLogger.d('Finished downloading channels');

        // # Fill the rest of array with DISABLED channels
        index += 1;
        while (index < iface.myInfo.maxChannels) {
          var ch = Channel();
          ch.role = Channel_Role.DISABLED;
          ch.index = index;
          partialChannels.add(ch);
          index += 1;
        }

        channels = partialChannels;
        // # FIXME, the following should only be called after we have settings and channels
        iface.connected(); // Tell everone else we are ready to go
      } else {
        _requestChannel(index + 1);
      }
    } */

    final meshPacket = await _sendAdmin(
      p: p,
      wantResponse: true,
    );
    if (meshPacket.decoded.portnum == PortNum.ADMIN_APP) {
      final c = Channel.fromBuffer(meshPacket.decoded.payload);
      partialChannels.add(c);
      appLogger.d('_requestChannel Received channel ${c.toString()}');
      int index = c.index;

      // for stress testing, we can always download all channels
      var fastChannelDownload = true;

      //  Once we see a response that has NO settings, assume we are at the end of channels and stop fetching
      var quitEarly = (c.role == Channel_Role.DISABLED) && fastChannelDownload;

      if (quitEarly || (index >= iface.myInfo.maxChannels - 1)) {
        appLogger.d('_requestChannel Finished downloading channels');

        // Fill the rest of array with DISABLED channels
        index += 1;
        while (index < iface.myInfo.maxChannels) {
          var ch = Channel();
          ch.role = Channel_Role.DISABLED;
          ch.index = index;
          partialChannels.add(ch);
          index += 1;
        }

        channels = partialChannels;
        // # FIXME, the following should only be called after we have settings and channels
        iface.connected(); // Tell everone else we are ready to go
      } else {
        await _requestChannel(index + 1);
      }
    } else
      appLogger.wtf('_requestChannel Received unexpected packet!!');
  }
/*   
def _sendAdmin(self, p: admin_pb2.AdminMessage, wantResponse=False,
                 onResponse=None):
      """Send an admin message to the specified node (or the local node if destNodeNum is zero)"""

      return self.iface.sendData(p, self.nodeNum,
                                 portNum=portnums_pb2.PortNum.ADMIN_APP,
                                 wantAck=True,
                                 wantResponse=wantResponse,
                                 onResponse=onResponse,
                                 channelIndex=self.iface.localNode._getAdminChannelIndex())
 */

  ///Send an admin message to the specified node (or the local node if destNodeNum is zero)
  // AF 20/3/2021 change to Future async, as _sendToRadio is async write
  Future<MeshPacket> _sendAdmin(
      {AdminMessage p,
      bool wantResponse = false,
      Function onResponse = null,
      int adminIndex = 0}) async {
    return await iface.sendData(
        byteData: p.writeToBuffer(),
        destinationId: nodeNum,
        portNum: PortNum.ADMIN_APP,
        wantAck: true,
        wantResponse: wantResponse,
        onResponse: onResponse,
        channelIndex: adminIndex);
  }
}
