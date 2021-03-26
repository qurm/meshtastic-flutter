// @dart=2.9
/// Interface classes for meshtastic devices, MeshInterface, BLEInterface
import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
// import 'package:get_it/get_it.dart';
// import 'package:logger/logger.dart';
import 'package:meshtastic_app/services/mesh/mesh_node.dart';

// import 'package:recase/recase.dart';

import '../../domain/commands/command_failure.dart';
import '../bluetooth/bluetooth.dart';
import '../proto/proto.dart';
import 'mesh_device.dart';

const START1 = 0x94;
const START2 = 0xc3;
const HEADER_LEN = 4;
const MAX_TO_FROM_RADIO_SIZE = 512;

/// A special ID that means broadcast
const BROADCAST_ADDR = '^all';

///A special ID that means the local node
const LOCAL_ADDR = '^local';

// if using 8 bit nodenums this will be shortend on the target
const BROADCAST_NUM = 0xffffffff;

const MY_CONFIG_ID = 42;

/// No of packet hops
const defaultHopLimit = 3;

/// The numeric buildnumber (shared with android apps)
/// specifying the level of device code we are guaranteed to understand
const OUR_APP_VERSION = 20120; //was   172;

// Our standard BLE characteristics
const TORADIO_UUID = 'f75c76d2-129e-4dad-a1dd-7866124401e7';
const FROMRADIO_UUID = '8ba2bcc2-ee02-4a55-a531-c525c5e454d5';
const FROMNUM_UUID = 'ed9da18c-a800-4f66-a670-aa7547e34453';

///A base64url encoder and decoder.
const base64Url = Base64Codec.urlSafe();

enum MeshtasticReceive { data, text, position, user, node, established, lost }
// connection established, lost are really device level events
// but a single stream is more usable by the UI

// Base UUID
// xxxxxxxx-0000-1000-8000-00805F9B34FB

/// See device-api.md in meshtastic-device/docs/software
///
// UUID for the service: 6ba1b218-15a8-461f-9fa8-5dcae273eafd
/// LISTED AS B218
// Each characteristic is listed as follows:

// UUID
// Properties
// Description (including human readable name)

// 8ba2bcc2-ee02-4a55-a531-c525c5e454d5
// read
// fromradio - contains a newly received FromRadio packet destined towards the
//  phone (up to MAXPACKET bytes per packet).
// After reading the esp32 will put the next packet in this mailbox. If the FIFO is
//  empty it will put an empty packet in this mailbox.

// f75c76d2-129e-4dad-a1dd-7866124401e7
// write
// toradio - write ToRadio protobufs to this characteristic to send them (up to MAXPACKET len)

// ed9da18c-a800-4f66-a670-aa7547e34453
// read,notify,write
// fromnum - the current packet # in the message waiting inside fromradio, if the phone sees this notify it should read messages
// until it catches up with this number.

// The phone can write to this register to go backwards up to FIXME packets, to handle the rare case of a fromradio packet was dropped after the esp32 callback was called, but before it arrives at the phone. If the phone writes to this register the esp32 will discard older packets and put the next packet >= fromnum in fromradio.
// When the esp32 advances fromnum, it will delay doing the notify by 100ms, in the hopes that the notify will never actally need to be sent if the phone is already pulling from fromradio.

///  see https://meshtastic.github.io/Meshtastic-python/meshtastic/index.html#meshtastic.MeshInterface
/// in __init__.py

/// A pending response callback, waiting for a response to one of our messages
// class ResponseHandler(Map<Dynamic, List<String>>){
//     // requestId: int - used only as a key
//     callback: Callable
//     // FIXME, add timestamp and age out old requests
// }

// /// Used to automatically decode known protocol payloads
// class KnownProtocol(NamedTuple){
//     name: str
//     // # portnum: int, now a key
//     // # If set, will be called to prase as a protocol buffer
//     protobufFactory: Callable = None
//     // # If set, invoked as onReceive(interface, packet)
//     onReceive: Callable = None
// }

/// Interface class for meshtastic devices, extended by BLEInterface
///
/// [device] current Meshtastic device
/// [isConnected]
/// [nodes] - The database of received nodes. Includes always up-to-date
/// location and username information for each node in the mesh. This is a read-only datastructure.
/// [myInfo] - Contains read-only information about the local radio
/// device (software version, hardware version, etc)
///     debugOut - unused?
class MeshInterface {
  MeshInterface(this.device, [this.debugOut, this.noProto]) {
    appLogger.i('MeshInterface constructor body: ');
    localNode = MeshNode(this, -1);
  }
// Properties:
  MeshDevice device;
  bool isConnected = false;
  bool noProto;
  MeshNode localNode; //how to pass self,

  /// Full information about a node on the mesh.
  /// Contains node `num`, `snr`, and `Position`, `User`.
  /// Initial empty Map.isEmpty = =true
  Map<int, NodeInfo> nodes = {}; //Python is Dict with strings like 'num, 'user'

  /// from Python, not used yet
  int debugOut;

  /// Unique local debugging info for this node.
  /// Sent to the phone in response to WantNodes.
  /// Contains node details like my_node_num, has_gps,
  /// num_channels, hw_model, firmware_version, etc.
  MyNodeInfo myInfo; // = None;

  /// A map from request ID to the handler - unused
  // Map responseHandlers = {};

  ///  If we've encountered a fatal exception it will be kept here
  Exception failure;

  /// NodeNum, MyNodeNum - up to 254 nodes, assume uint32 in proto
  /// You can however use a BigInt and use toUnsigned(32) after
  /// each operation you do to it.
  //Map nodes = {};  // nodes keyed by ID
  Map<int, NodeInfo> _nodesByNum = {}; // nodes keyed by nodenum
  // RadioConfig radioConfig; // now is in Node class
  FromRadio fromRadio; //set in _handlefromRadio, contains channelSettings

// random.seed()  # FIXME, we should not clobber the random seedval here, instead tell user they must call it
// self.currentPacketId = random.randint(0, 0xffffffff)
//TODO set to random, per Python
  int currentPacketId; // = None;

  StreamController<MeshtasticReceive> controller;

  /// Start device packets flowing - not part of constructor as is async
  /// Clears internal structures, sends , then
  /// AF 10/1/2021 change to Future async, as _sendToRadio is async write
  Future<void> _startConfig() async {
    myInfo = MyNodeInfo();
    Map nodes = {}; // nodes keyed by ID, empty map
    Map _nodesByNum = {}; // nodes keyed by nodenum
    // radioConfig = RadioConfig(); //TODO empty object?  Now in Node class
    currentPacketId = 0; //TODO this default is Ok, not null?

    final startConfig = ToRadio();
    startConfig.wantConfigId = MY_CONFIG_ID; // we don't use this value
    await _sendToRadio(startConfig); //uses super BLEInterface
    controller = StreamController<MeshtasticReceive>.broadcast(
        onListen: () => {}, onCancel: () => {});
  }

  /// Broadcast Stream of events, like [MeshtasticReceive] { data, text, position, user, node }
  /// consumed by SetupDeviceBloc, and other UI blocs
  Stream<MeshtasticReceive> get meshEvents {
    return controller.stream;
  }

  /// [sendText] Send a utf8 string to some other node, if the node has a display it will also be shown on the device.
  /// Arguments:
  ///     [text] {string} -- The text to send (will encode to UTF8 byte list)
  /// Keyword Arguments:
  ///     [destinationId] {nodeId or nodeNum} -- where to send this message (default: {BROADCAST_ADDR})
  ///     [wantAck] -- True if you want the message sent in a reliable manner (with retries and ack/nak provided for delivery)
  /// Returns the sent packet. The id field will be populated in this packet and can be used to track future message acks/naks.
  /// was dataType: Data_PortNum.CLEAR_TEXT, //Changed with new mesh.proto Jan 2020
  /// AF changed 8/1/20 for device v>1.20, in line with python app
  /// AF 20/3/2021 change to Future async, as _sendToRadio is async write
  Future<MeshPacket> sendText(
      {String text,
      int destinationId = BROADCAST_NUM,
      bool wantAck = false,
      bool wantResponse = false}) async {
    userLogger.i('MeshInterface sendText() $text');
    return await sendData(
        byteData: utf8.encode(text),
        destinationId: destinationId,
        portNum: PortNum.PRIVATE_APP,
        wantAck: wantAck,
        wantResponse: wantResponse);
  }

  /// [sendData] Send a data packet to some other node
  ///
  /// [byteData] raw data as bytes (utf8 text, or other data types)
  /// [destinationId] {nodeId or nodeNum} -- where to send this message (default: {BROADCAST_ADDR})
  /// [portNum] - Meshtastic internal application type; see portnums.proto
  /// [wantAck] -- True if you want the message sent in a reliable manner (with retries and ack/nak provided for delivery)
  /// [wantResponse] -- True if you want the service on the other side to send an
  /// application layer response
  /// [hopLimit] Number of hops within the mesh, normally like 2,3 4
  /// [onResponse] -- A closure of the form funct(packet), that will be called
  /// when a response packet arrives (or the transaction is NAKed due to non receipt)

  /// Returns the sent packet. The id field will be populated in this packet and can be used to track future message acks/naks.
  /// AF changed 8/01/21 for device v>1.20, in line with python app
  /// AF changed 14/03/21 for device v1.20.10, new protobufs
  /// AF 20/3/2021 change to Future async, as _sendToRadio is async write
  Future<MeshPacket> sendData(
      {List<int> byteData,
      int destinationId = BROADCAST_NUM,
      PortNum portNum = PortNum.PRIVATE_APP,
      bool wantAck = false,
      bool wantResponse = false,
      int hopLimit = defaultHopLimit,
      Function onResponse = null, //callback?
      int channelIndex = 0}) async {
    // see https://github.com/dart-lang/protobuf/issues/305
    // subMessage is read-only, so build up as below:
    MeshPacket _meshPacket = MeshPacket()
      // SubPacket _subPacket = SubPacket();
      ..channel = channelIndex;
    Data _data = Data()
      ..payload = byteData
      ..portnum = portNum
      ..wantResponse = wantResponse;
    _meshPacket.decoded = _data;

    return await sendPacket(
        meshPacket: _meshPacket,
        destinationId: destinationId,
        wantAck: wantAck,
        hopLimit: hopLimit);

    // 20/3/21 Response handling not really relevant for the Flutter app at this stage
    // if (onResponse != null) {
    //   _addResponseHandler(p.id, onResponse);
    // }
  }

  /// Send a position packet to some other node (normally a broadcast)
  /// Also, the device software will notice this packet and use it to
  /// automatically set its notion of the local position.
  /// If timeSec is not specified (recommended), we will use the local machine time.
  /// Returns the sent packet. The id field will be populated in this packet and can be used to track future message acks/naks.
  /// AF changed 08/01/21 for device v>1.20, in line with python app
  /// AF 20/3/2021 change to Future async, as _sendToRadio is async write
  Future<MeshPacket> sendPosition(
      {double latitude = 0.0,
      double longitude = 0.0,
      double altitude = 0,
      int timeSec = 0,
      int destinationId = BROADCAST_NUM,
      bool wantAck = false,
      bool wantResponse = false}) async {
    // MeshPacket _meshPacket = MeshPacket();
    Position _position = Position();
    if (latitude != 0.0) {
      _position.latitudeI = (latitude ~/ 1e-7);
    }
    if (longitude != 0.0) {
      _position.longitudeI = (longitude ~/ 1e-7);
    }
    if (altitude != 0) {
      _position.altitude = (altitude).toInt();
    }
    if (timeSec == 0) timeSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    /// returns unix timestamp in seconds;
    _position.time = (timeSec).toInt();

    // _meshPacket.decoded.position = _position;    //deprecated in device v1.20
    return await sendData(
        byteData: _position.writeToBuffer(), //AF changed with device 1.20
        //meshPacket: _meshPacket,
        destinationId: destinationId,
        portNum: PortNum.POSITION_APP,
        wantAck: wantAck,
        wantResponse: wantResponse);
  }

  // 20/3/21 Response handling not really relevant for the Flutter app at this stage
  // void _addResponseHandler(int requestId, Function callback) {
  //   responseHandlers[requestId] = ResponseHandler(callback);
  // }

  /// Send a [MeshPacket] to the specified node [destinationId] (or if unspecified, broadcast).
  /// For class Internal use - you probably don't want this - use sendData instead.
  /// Arguments:
  /// [meshPacket]
  /// [destinationId] {nodeId or nodeNum} -- where to send this message (default: {BROADCAST_ADDR})
  /// [wantAck] -- True if you want the message sent in a reliable manner (with retries and ack/nak provided for delivery)
  /// Returns the sent packet.
  /// [hopLimit] Number of hops within the mesh, normally like 2,3 4
  /// The id field will be populated in this packet and can be used to track future message acks/naks.
  /// Port - changed BROADCAST_ADDR to BROADCAST_NUM
  /// AF changed 14/03/21 for device v1.20.10, new protobufs
  /// AF 20/3/2021 change to Future async, as _sendToRadio is async write
  /// Now  destinationId is String
  Future<MeshPacket> sendPacket(
      {MeshPacket meshPacket,
      int destinationId = BROADCAST_NUM,
      bool wantAck = false,
      int hopLimit = defaultHopLimit}) async {
    int nodeNum;

    // We allow users to talk to the local node before we've completed the full connection flow...
    // if(self.myInfo is not None and destinationId != self.myInfo.my_node_num):
    //     self._waitConnected();

    ToRadio toRadio = ToRadio(); //gets message instance
    // FIXME add support for non broadcast addresses

    //Check can convert to int
    if (destinationId != null) {
      throw Exception('destinationId must not be None');
    } else if (destinationId is int) {
      nodeNum = destinationId;
    } else if (destinationId == BROADCAST_NUM) {
      nodeNum = BROADCAST_NUM;
      // TODO 14/3/21 - copy Pythoon logic on destinationId
      // } else if (destinationId == LOCAL_ADDR) {
      //   nodeNum = myInfo.myNodeNum;
      // }   else if (destinationId startwith !){
      //why lookup in the nodes map?
      // python: nodeNum = this.nodes[destinationId]['num'];
    } else {
      nodeNum = this.nodes[destinationId].num;
    }
    meshPacket.to = nodeNum;
    meshPacket.wantAck = wantAck;
    meshPacket.hopLimit = hopLimit;

    // # if the user hasn't set an ID for this packet (likely and recommended), we should pick a new unique ID
    // # so the message can be tracked.
    if (meshPacket.id == 0) meshPacket.id = _generatePacketId();
    // Python: toRadio.packet.CopyFrom(meshPacket);
    //TODO what is this doing Python uses copyfrom
    toRadio.packet = meshPacket;
    await _sendToRadio(toRadio);
    return meshPacket;
  }

  /// setPreferenceList sets a list of attributes in [UserPreferences]
  /// the preference is validated to exist
  /// returns Option< ,true> or a Failure from [CommandFailure]
  /// Then must follow this with a call to writeConfig to send to the device
  /// called from setup device bloc on event DeviceCommand
  // Uses string type for value, as most versatile
  // https://stackoverflow.com/questions/61401756/how-to-extract-number-only-from-string-in-flutter/61401948#61401948
  // aStr = a.replaceAll(new RegExp(r'[^0-9]'),'');
  Either<CommandFailure, bool> setPreferenceList3(Map<String, String> prefMap) {
    // RadioConfig_UserPreferences prefs = radioConfig.preferences;

    prefMap.forEach((key, value) {
      final possibleFailure = _setPreference(key, value);
      if (possibleFailure.isLeft()) {
        return possibleFailure;
      }
    });
    return right(true);
  }

  Either<CommandFailure, bool> setPreferenceList(Map<String, String> prefMap) {
    prefMap.forEach((key, value) {
      // direct reference to the .preferences, doesnt work with dotted path
      // TODO - this is localNode, should also set remote Nodes?
      final prefs = localNode.radioConfig.preferences; //Now in Node class
      final possibleFailure = _setPreference2(prefs, key, value);
      if (possibleFailure.isLeft()) {
        return possibleFailure;
      } else {
        // commit the change
        localNode.radioConfig.preferences = prefs;
      }
    });
    return right(true);
  }

  /// setPreference sets a single (string) attribute in [UserPreferences]
  /// [preference] is in snakecase, as used on Python meshtastisc, here is
  /// converted to camelCase, used by dart protobufs
  /// the preference is validated to exist
  /// returns Option< ,true> or a Failure from [CommandFailure]
  /// Then must follow this with a call to writeConfig to send to the device
  Either<CommandFailure, bool> _setPreference2(
      RadioConfig_UserPreferences prefs, String preference, String value) {
    // logger.d('setPreference prefs ${prefs.isFrozen}');
    // prefs = RadioConfig_UserPreferences();

    int intVal = int.tryParse(value); //null
    userLogger.i('MeshInterface setPreference $preference: $value');
    // Note preference is in send_owner_interval format to align with Python and other Meshtastic apps
    // whereas the Dart Protobuf implementation uses sendOwnerInterval format
    try {
      switch (preference) {
        case 'position_broadcast_secs':
          prefs.positionBroadcastSecs = intVal;
          return right(true);
        case 'send_owner_interval':
          prefs.sendOwnerInterval = intVal;
          return right(true);
        // case 'num_missed_to_fail':
        //   prefs.numMissedToFail = intVal;
        //   return right(true);
        case 'wait_bluetooth_secs':
          prefs.waitBluetoothSecs = intVal;
          return right(true);
        case 'screen_on_secs':
          prefs.screenOnSecs = intVal;
          return right(true);
        case 'phone_timeout_secs':
          prefs.phoneTimeoutSecs = intVal;
          return right(true);
        case 'phone_sds_timeout_sec':
          prefs.phoneSdsTimeoutSec = intVal;
          return right(true);
        case 'mesh_sds_timeout_secs':
          prefs.meshSdsTimeoutSecs = intVal;
          return right(true);
        case 'sds_secs':
          prefs.sdsSecs = intVal;
          return right(true);
        case 'ls_secs':
          prefs.lsSecs = intVal;
          return right(true);
        case 'min_wake_secs':
          prefs.minWakeSecs = intVal;
          return right(true);
        // start string values
        case 'wifi_ssid':
          prefs.wifiSsid = value;
          return right(true);
        case 'wifi_password':
          prefs.wifiPassword = value;
          return right(true);
        case 'wifi_ap_mode':
          prefs.wifiApMode = (value.toLowerCase() == 'true');
          return right(true);

        case 'region':
          prefs.region = RegionCode.values
              .firstWhere((e) => describeEnum(e) == value.toUpperCase());
          return right(true);

        case 'factory_reset':
          prefs.factoryReset = (value.toLowerCase() == 'true');
          return right(true);

        case 'is_router':
          prefs.isRouter = (value.toLowerCase() == 'true');
          return right(true);
        case 'is_low_power':
          prefs.isLowPower = (value.toLowerCase() == 'true');
          return right(true);

        //TODO needs some special setter, as is a list of ignore Nodes
        // case 'ignoreIncoming':
        //   prefs.ignoreIncoming = value;
        //   return right(true);
        default:
          return left(const CommandFailure.incorrectParameter());
        //raise failure - unknown command
      }
    } catch (e) {
      // needs more to handle parameter type fails
      appLogger.e('setPreference unexpected: $e');
      return left(const CommandFailure.incorrectParameter());
    }
  }

  /// setPreference sets a single (string) attribute in [UserPreferences]
  /// the preference is validated to exist
  /// returns Option< ,true> or a Failure from [CommandFailure]
  /// Then must follow this with a call to writeConfig to send to the device
  /// called from setup device bloc on event DeviceCommand
  // Uses string type for value, as most versatile
  // https://stackoverflow.com/questions/61401756/how-to-extract-number-only-from-string-in-flutter/61401948#61401948
  // aStr = a.replaceAll(new RegExp(r'[^0-9]'),'');
  Either<CommandFailure, bool> _setPreference(String preference, String value) {
    RadioConfig_UserPreferences prefs = localNode.radioConfig.preferences;
    // logger.d('setPreference prefs ${prefs.isFrozen}');
    // prefs = RadioConfig_UserPreferences();

    int intVal = int.tryParse(value); //null
    userLogger.i('MeshInterface setPreference $preference: $value');
    // Note preference is in send_owner_interval format to align with Python and other Meshtastic apps
    // whereas the Dart Protobuf implementation uses sendOwnerInterval format
    try {
      switch (preference) {
        case 'position_broadcast_secs':
          prefs.positionBroadcastSecs = intVal;
          return right(true);
        case 'send_owner_interval':
          prefs.sendOwnerInterval = intVal;
          return right(true);
        // case 'num_missed_to_fail':
        //   prefs.numMissedToFail = intVal;
        //   return right(true);
        case 'wait_bluetooth_secs':
          prefs.waitBluetoothSecs = intVal;
          localNode.radioConfig.preferences = prefs;
          return right(true);
        case 'screen_on_secs':
          prefs.screenOnSecs = intVal;
          localNode.radioConfig.preferences = prefs;
          return right(true);
        case 'phone_timeout_secs':
          prefs.phoneTimeoutSecs = intVal;
          localNode.radioConfig.preferences = prefs;
          return right(true);
        case 'phone_sds_timeout_sec':
          prefs.phoneSdsTimeoutSec = intVal;
          return right(true);
        case 'mesh_sds_timeout_secs':
          prefs.meshSdsTimeoutSecs = intVal;
          return right(true);
        case 'sds_secs':
          prefs.sdsSecs = intVal;
          return right(true);
        case 'ls_secs':
          prefs.lsSecs = intVal;
          return right(true);
        case 'min_wake_secs':
          prefs.minWakeSecs = intVal;
          return right(true);
        // start string values
        case 'wifi_ssid':
          prefs.wifiSsid = value;
          return right(true);
        case 'wifi_password':
          prefs.wifiPassword = value;
          return right(true);
        case 'wifi_ap_mode':
          prefs.wifiApMode = (value.toLowerCase() == 'true');
          return right(true);

        case 'region':
          prefs.region = RegionCode.values
              .firstWhere((e) => describeEnum(e) == value.toUpperCase());
          return right(true);

        case 'factory_reset':
          prefs.factoryReset = (value.toLowerCase() == 'true');
          return right(true);

        case 'is_router':
          prefs.isRouter = (value.toLowerCase() == 'true');
          localNode.radioConfig.preferences = prefs;
          return right(true);
        case 'is_low_power':
          prefs.isLowPower = (value.toLowerCase() == 'true');
          return right(true);

        //TODO needs some special setter, as is a list of ignore Nodes
        // case 'ignoreIncoming':
        //   prefs.ignoreIncoming = value;
        //   return right(true);

        default:
          return left(const CommandFailure.incorrectParameter());
        //raise failure - unknown command
      }
    } catch (e) {
      // needs more to handle parameter type fails
      appLogger.w('setPreference unexpected: $e');
      return left(const CommandFailure.incorrectParameter());
    }
  }

  //do BLE set - wait for connection

  //timeout send error

  //return
  ///check the state, either reconnect or scan
  ///
  // try {
  //   final state = blueAPIClient.state;
  //   if (state == BluetoothState.on) {
  //     return right(unit);
  //   }
  // } catch (e) {
  //   if (e.message.contains('error')) {
  //     return left(const ConnectFailure.nobluetooth());
  //   } //todo add further elseif

  // }

  // radioConfig.preferences

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

  /// AF (ported from Python) 14/03/21 now in Node
  /// Write the current (edited) [radioConfig] to the device
  /*
  Future<void> writeConfig() async {
    userLogger.i('MeshInterface writeConfig() ');
    if (!radioConfig.isInitialized()) {
      throw Exception("No RadioConfig has been read");
    }
    // final t = ToRadio();
    final t = AdminMessage();
    t.setRadio = radioConfig;
    // await _sendToRadio(t);
    await _sendAdmin(t);
  }
  */

//     //TODO set type NodeDict?
//     /// Node fields are optional - TODO check for null, and handle?
//     User getMyNode(){
//       User emptyUser = User();
//         if (myInfo is None)
//             {return emptyUser}
//         final myId = myInfo.my_node_num;
//         // for _, nodeDict in this.nodes.items():
//         for (var node in nodes){
//             if (node.num == myId)
//                 {return node?.user ?? emptyUser ;}}
//         return emptyUser;}

  NodeInfo getMyNodeInfo() {
    if (myInfo.isInitialized())
      return _nodesByNum[myInfo.myNodeNum];
    else
      return null;
  }

  User getMyUser() {
    final nodeInfo = getMyNodeInfo();
    if (nodeInfo != null) {
      return nodeInfo.user;
    }
    return null;
  }

  String getLongName() {
    final user = getMyUser();
    if (user != null) return user.longName;
    return null;
  }

  String getShortName() {
    final user = this.getMyUser();
    if (user != null) return user.shortName;
    return null;
  }

/* 
 /// AF (ported from Python) 14/03/21 now in Node class
  /// Property for sharable URL that describes the current channel
  /// see also https://stackoverflow.com/questions/56201074/how-to-encode-and-decode-base64-and-base64url-in-flutter-dart
  String get channelURL {
    // final cs = radioConfig.channelSettings.fromBuffer;
    // final cs = radioConfig.channelSettings;  //AF 10/1/21 changed in device version >1.20
    // final cs = fromRadio.channel; // type ChannelSettings;
    var cs = ChannelSet();
    //final s = base64.urlsafe_b64encode(bytes).decode('ascii');
    final s = base64UrlEncode(cs.writeToBuffer());
    return "https://www.meshtastic.org/c/#${s}";
  }
 */

/* 
  /// AF (ported from Python) 14/03/21 now in Node class
  /// Set mesh network URL
  void setURL({String url, bool write = true}) {
    if (!radioConfig.isInitialized()) {
      throw Exception("No RadioConfig has been read");
    }
    // URLs are of the form https://www.meshtastic.org/c/#{base64_channel_settings}
    // Split on '/#' to find the base64 encoded channel settings
    //var splitURL = url.split("/#");
    //String decodedURL = base64.urlsafe_b64decode(splitURL[-1]);
    var decodedURL = base64Url.decode(url.split("/#").last);
    radioConfig.channelSettings = ChannelSettings.fromBuffer(decodedURL);
    if (write) {
      writeConfig();
    }
  }
 */

// Get a new unique packet ID
  int _generatePacketId() {
    if (this.currentPacketId == null) //todo null on zero
    {
      throw Exception("Not connected yet, can not generate packet");
    } else {
      this.currentPacketId = (this.currentPacketId + 1) & 0xffffffff;
      return this.currentPacketId;
    }
  }

  /// Called by subclasses to tell clients this interface has disconnected
  void _disconnected() {
    isConnected = false;
    // raise event
    // pub.sendMessage("meshtastic.connection.lost", interface=self)
    controller.add(MeshtasticReceive.lost);
    userLogger.i("meshtastic.connection.lost ${device.id}'");
  }

  /// Called by this class to tell clients we are now fully connected to a node
  /// AF was _connected, but called from Node class
  void connected() {
    // _connected might be called when remote Node
    //  objects complete their config reads, don't generate redundant
    // isConnected events   for the local interface
    if (!isConnected) {
      isConnected = true;
      // raise Event
      // pub.sendMessage("meshtastic.connection.established", interface=self);
      controller.add(MeshtasticReceive.established);
      userLogger.i('meshtastic.connection.established ${device.id}');
    }
  }

  /// Send a ToRadio protobuf to the device
  ///
  /// Packets/commands to the radio will be written (reliably) to
  /// the [ToRadio] characteristic. Once the write completes the phone can
  /// assume it is handled. Contains one of [MeshPacket], [RadioConfig],
  /// [User], identifier [wantConfigId].
  /// This placeholder is overridden in BLEInterface, see class BLEInterface(MeshInterface):
  Future<void> _sendToRadio(ToRadio toRadio) {
    appLogger.w(
        'Sending ToRadio called in MeshInterface - no BLEInterface? : ${toRadio}');
    return Future.error(
        'Sending toradio called in MeshInterface - no BLEInterface? : ${toRadio}');
  }

  /// Done with initial config messages, now send regular MeshPackets to ask for settings and channels
  /// AF 17/03/21 updated from Python v1.20
  void _handleConfigComplete() {
    localNode.requestConfig();
  }

  /// Handle a packet that arrived from the radio
  /// Called by subclasses.
  /// Packets from the radio to the phone will appear on the FromRadio char.
  /// It will support READ and NOTIFY.
  /// Contains one of MeshPacket, MyNodeInfo, NodeInfo,
  /// RadioConfig, DebugString, config_complete_id, rebooted
  void _handleFromRadio(List<int> fromRadioBytes) {
    //error here InvalidProtocolBufferException due to MTU too small
    //AF 10/1/2021 - moved to class property, as used for ChannelURL
    // AF 17/03/21 updated from Python v1.20
    fromRadio = new FromRadio.fromBuffer(fromRadioBytes);
    userLogger.d('_handleFromRadio Received: ${fromRadio.toDebugString()}');
    if (fromRadio.hasMyInfo()) {
      myInfo = fromRadio.myInfo;
      localNode.nodeNum = myInfo.myNodeNum;

      var msg = '';
      if (myInfo.minAppVersion > OUR_APP_VERSION) {
        msg =
            'This device version ${myInfo.minAppVersion} needs a later client than $OUR_APP_VERSION, please upgrade meshtastic';
      }
      if (myInfo.maxChannels == 0) {
        msg =
            'This version of meshtastic-python requires device firmware version 1.2 or later. For more information see https://tinyurl.com/5bjsxu32';
      }
      if (msg.isNotEmpty) {
        failure = Exception(msg);
        controller.addError(msg);
        //TODO - clean exit here?  RAise Exception to UI
        // see Python
        // close();
      }

      // start assigning our packet IDs from the opposite side of where our local device is assigning them
      // currentPacketId = (myInfo.currentPacketId + 0x80000000) & 0xffffffff;

      // AF 17/03/21 removed as in Python v1.20
      // } else if (fromRadio.hasRadio()) {
      //   radioConfig = fromRadio.radio;
      //   appLogger.v(
      //       'fromRadio radioConfig ${radioConfig.preferences.toDebugString()}');

    } else if (fromRadio.hasNodeInfo()) {
      var node = fromRadio.nodeInfo;
      try {
        _fixupPosition(node.position);
        appLogger.v('fromRadio NodeInfo ${node.position.toDebugString()}');
      } catch (e) {
        appLogger.e('fromRadio Node without position');
      }
      _nodesByNum[node.num] = node; //add node to the map
      // Some nodes might not have user/ids assigned yet
      // Python: if ("user" in node) this.nodes[node["user"]["id"]] = node;
      // TODO - adding a node, or replacing?  Strin or int id.
      // if (node.hasUser()) nodes[node.user.id] = node;
      // raise Event
      controller.add(MeshtasticReceive.node);
      userLogger.v('meshtastic.node.updated ${node.num}');
    }
    // we ignore the config_complete_id, it is unneeded for our stream API fromRadio.config_complete_id
    else if (fromRadio.configCompleteId == MY_CONFIG_ID)
      // AF 17/03/21 removed as in Python v1.20
      // _connected();
      _handleConfigComplete();
    else if (fromRadio.hasPacket())
      _handlePacketFromRadio(fromRadio.packet);
    else if (fromRadio.rebooted) {
      /// Tell clients the device went away.  Careful not to call the overridden
      ///  subclass version that closes the serial port
      //MeshInterface._disconnected();
      _disconnected();
      _startConfig();
      userLogger.i('meshtastic.node.rebooted');
    } // redownload the node db etc...}
    else {
      userLogger.v("Unexpected FromRadio payload");
    }
    // userLogger.v('Node list $_nodesByNum');
  }

  /// Convert integer lat/lon into floats - not used, as will do if needed in repository layer
  /// Arguments:
  ///     position {Position dictionary} -- object ot fix up
  void _fixupPosition(Position position) {
    appLogger.d("_fixupPosition called lat ${position.latitudeI}");
    //TODO appears to be adding new properties to object - need a new Dart Position class
    //if (position.hasLatitudeI()) position.latitude = position.latitudeI * 1e-7;
    // if (position.hasLongitudeI())
    //   position.longitude = position.longitudeI * 1e-7;
    // Python: if ("latitudeI" in position ) position["latitude"] = position["latitudeI"] * 1e-7;
    // Python: if ("longitudeI" in position) position["longitude"] = position["longitudeI"] * 1e-7;
  }

  /// Map a node node number to a node ID
  ///
  /// Arguments int nodeNum -- Node number
  /// Returns string -- Node ID
  String _nodeNumToId(int nodeNum) {
    if (nodeNum == BROADCAST_NUM) return BROADCAST_ADDR;
    try {
      return _nodesByNum[nodeNum].user.id.toString();
    } catch (e) {
      userLogger.w('Node $nodeNum not found for fromId $e');
      return '';
    }
  }

  /// Given a nodenum find the NodeInfo in the map (or create)
  /// TODO handle exception as failure
  NodeInfo _getOrCreateByNum(int nodeNum) {
    if (nodeNum == BROADCAST_NUM) {
      throw Exception('Can not create/find nodenum by the broadcast num');
    }
    _nodesByNum.putIfAbsent(nodeNum, () => new NodeInfo());
    return _nodesByNum[nodeNum];

    // simplified to above 2 lines
    // if (_nodesByNum.containsKey(nodeNum))
    //   return _nodesByNum[nodeNum];
    // else {
    //   // Create a minimal node db entry
    //   var n = new NodeInfo();
    //   _nodesByNum[nodeNum] = n;
    //   return n;
    // }
  }

  /// Handle a MeshPacket that just arrived from the radio
  ///
  /// Will handle one of the following packets, and raise events:
  /// - [meshtastic.receive.data.payload] (text, user, position, others in future)
  /// Will handle one of the following packets, and raise events:
  /// - meshtastic.receive.text(packet = MeshPacket )
  /// - meshtastic.receive.position(packet = MeshPacket )
  /// - meshtastic.receive.user(packet = MeshPacket )
  /// - meshtastic.receive.data(packet = MeshPacket )
  /// Changed with firmware >1.1.20 to App based "payload" [PortNum.UNKNOWN_APP]
  void _handlePacketFromRadio(MeshPacket meshPacket) {
    //not needed Dict as per Python - work with object
    //add fromId and toId fields based on the node ID
    //TODO do porting
    // AF 17/03/21 updated from Python v1.20

    // from, to might be missing if the nodenum was zero.
    int fromId = meshPacket.hasFrom() ? meshPacket.from : 0;
    int toId = meshPacket.hasTo() ? meshPacket.to : 0;

    // appLogger.w(
    //     'Device returned a packet we sent, ignoring: ${meshPacket.toString()}');
    appLogger.d('_handlePacketFromRadio Received: ${meshPacket.toString()}');

    //add fromId and toId fields based on the node ID

    // # We could provide our objects as DotMaps - which work with . notation or as dictionaries
    // # asObj = DotMap(asDict)
    // was meshPacket.decoded.hasPosition()
    // now meshPacket.decoded.payload.

    /// decoded (Data type) now has a PortNum and payload only
    /// so we check PortNum and deal with it

    /// UNKNOWN_APP is the default protobuf portnum value, and therefore if
    /// not set it will not be populated at all
    /// to make API usage easier, set it to prevent confusion
    if (!meshPacket.decoded.hasPortnum()) {
      meshPacket.decoded.portnum = PortNum.UNKNOWN_APP;
    } // was Data_Type.OPAQUE;
    String topic = 'meshtastic.receive.data.${meshPacket.decoded.portnum}';
    controller.add(MeshtasticReceive.data);

/*

    // String topic = "meshtastic.receive"; // Generic unknown packet type
    if (meshPacket.decoded.payload.hasPosition()) {
      userLogger.v(
          '_handlePacketFromRadio: ignoring old decoded.position message. Update firmware to >1.1.20');
      // topic = "meshtastic.receive.position";
      // this._fixupPosition(meshPacket.decoded.position);
      // // update node DB as needed, with new position
      // this._getOrCreateByNum(meshPacket.from).position =
      //     meshPacket.decoded.position;
    }

    if (meshPacket.decoded.hasUser()) {
      userLogger.v(
          '_handlePacketFromRadio: ignoring old decoded.user message. Update firmware to >1.1.20');
      // topic = "meshtastic.receive.user";
      // User u = meshPacket.decoded.user;
      // // update node DB as needed
      // NodeInfo n = this._getOrCreateByNum(fromId);
      // n.user = u;
      // // We now have a node ID, make sure it is uptodate in that table
      // nodes[fromId].user = u;
    }

    if (meshPacket.decoded.hasData()) {
      topic = 'meshtastic.receive.data';
      // OPAQUE is the default protobuf typ value, and therefore if not set it will not be populated at all
      // to make API usage easier, set it to prevent confusion
      if (!meshPacket.decoded.data.hasPortnum()) {
        meshPacket.decoded.data.portnum = PortNum.UNKNOWN_APP;
      } // was Data_Type.OPAQUE;
      controller.add(MeshtasticReceive.data);
*/
    // For text messages, we go ahead and decode the text to ascii for our users
    // was Data_Type.CLEAR_TEXT
    if (meshPacket.decoded.portnum == PortNum.TEXT_MESSAGE_APP) {
      topic = 'meshtastic.receive.text';

      // We don't throw if the utf8 is invalid in the text message.
      // Instead we just don't populate
      // the decoded.data.text and we log an error message.
      // This at least allows some delivery to
      // the app and the app can deal with the missing decoded representation.
      // Usually btw this problem is caused by apps sending binary data but setting the payload type to
      // text.
      // A Dart string is a sequence of UTF-16 code units
      try {
        //TODO - extend class to hold decoded text
        final String text = Utf8Decoder().convert(meshPacket.decoded.payload);
        controller.add(MeshtasticReceive.text);
        userLogger
            .v('_handlePacketFromRadio: meshPacket.decoded.payload = $text');
      } catch (ex) {
        userLogger.e(
            '_handlePacketFromRadio: Malformatted utf8 in text message: ${ex}');
        //TODO should raise error to controller.add(MeshtasticReceive.unknown?);
      }
    }

    if (meshPacket.decoded.portnum == PortNum.POSITION_APP) {
      topic = 'meshtastic.receive.position';
      //TODO - not required - can remove when all working 21/03/2021
      // _fixupPosition(Position.fromBuffer(meshPacket.decoded.payload));
      // update node DB as needed, with new position
      _getOrCreateByNum(meshPacket.from).position =
          Position.fromBuffer(meshPacket.decoded.payload);
      controller.add(MeshtasticReceive.position);
    }

    if (meshPacket.decoded.portnum == PortNum.NODEINFO_APP) {
      topic = 'meshtastic.receive.user';
      User u = User.fromBuffer(meshPacket.decoded.payload);
      // update node DB as needed
      NodeInfo n = _getOrCreateByNum(fromId);
      n.user = u;
      // We now have a node ID, update or add to the map
      //nodes[fromId].user = u;
      nodes.update(fromId, (v) {
        v.user = u;
        return v;
      }, ifAbsent: () => n);
      controller.add(MeshtasticReceive.user);
    }
    userLogger.v('send message $topic');
  }
}

// constructors https://medium.com/flutter-community/deconstructing-dart-constructors-e3b553f583ef

/// BLE Mesh interface to devices or nodes
/// [device] is connected MeshDevice
class BLEInterface extends MeshInterface {
  BLEInterface(MeshDevice device) : super(device) {
    appLogger.d('BLEInterface constructor body: ${device.hashCode}');
  }

  /// Startup the interface and write/read from radio GATT characteristics
  /// has async code, so not called in the constructor, but from meshServiceStart
  Future<bool> init() async {
    bool _intialised = false;
    userLogger.i('BLEInterface init() device: ${device.id}');
    appLogger.d('BLEInterface init() 1: ${_intialised}');
    await device.requestMtu(512).timeout(const Duration(seconds: 2),
        onTimeout: () {
      throw Exception('BLEInterface requestMtu failed to complete');
      device.disconnect(); // disconnect after timeout.  Todo trap any error
    });
    // appLogger.d('BLEInterface init() 2: ${_intialised}');
    _intialised = await device.initialiseMeshService();
    // appLogger.d('BLEInterface init() 3: ${_intialised}');
    if (_intialised) await super._startConfig();
    // AF TODO - needs time to complete, async does not help
    appLogger.d('BLEInterface init() 4: ${_intialised}');
    // await Future.delayed(Duration(seconds: 1));
    // can check some BLE status here?

    //AF 9/1/2021 trying await - yes this fixes it.  Ensure stable testing.
    if (_intialised) {
      await _readFromRadio();
      // userLogger.v(
      //     'BLEInterface init() Prefs: ${localNode.radioConfig.preferences.toString()}');

      ///AF 18/01/2021, setup stream on Notify for fromNum BLE characterisitic
      ///  TODO, add onerror, onclose functions
      await device.fromNum.setNotifyValue(true);
      device.fromNum.value.listen((event) {
        _handleFromNumNotify(event);
      });
    } else {
      throw Exception('BLEInterface failed to initialise');
    }
    return _intialised;
  }

  /// Called by bloc on device state change to say this interface has disconnected
  void disconnected() {
    // will add meshEvent to stream
    _disconnected();
  }

  /// Called by bloc on device state change to say this interface has fully connected/re-connected to a node
  /// AF made this a public method so can call from Node - any further cleanup
  // void connected() {
  //   connected();
  // }

  /// Device has notified data is available
  /// type Uint8List , see https://medium.com/flutter-community/working-with-bytes-in-dart-6ece83455721
  /// need to check small/big-endian on android
  void _handleFromNumNotify(List<int> byteList) async {
    Uint8List byteData = Uint8List.fromList(byteList);
    var bytes = byteData.buffer.asByteData();
    //seems to notify, then bytelist is zero length
    //int _packetNumber = bytes.getInt8(0);
    // int _packetNumber = bytes.getInt16(0);
    userLogger
        .v("_handleFromNumNotify BLE Notify: ${byteData.buffer.toString()} }");
    // read packet number
    // fetch fromRadio packet, handle it.  Should repeat until up to number
    await _readFromRadio();
    // TODO, there may be multiple messages queued up
  }

  /// Send a ToRadio protobuf to the device
  /// Packets/commands to the radio will be written (reliably) to
  /// the [toRadio] characteristic. Once the write completes the phone can
  /// assume it is handled. Contains one of [MeshPacket], [RadioConfig],
  /// [User], identifier [wantConfigId].
  @override
  Future<void> _sendToRadio(ToRadio toRadio) async {
    userLogger.v('_sendToRadio writing ${toRadio} to ${device.id.toString()}');
    List<int> bytes = toRadio.writeToBuffer(); //.SerializeToString()
    // await _toRadio.write(bytes, withoutResponse: true);
    //TODO - can fail here after some downtime, may need to reconnect to device?
    await device.toRadio.write(bytes, withoutResponse: false);
  }

  void close() {
    // this.adapter.stop();
    //TODO what to close
  }

  /// testing method
  Future<void> read() async {
    await _readFromRadio();
  }

  /// getConfig requests device to send config to phone
  /// Will result in reading & handling packets, and updating all config to device values
  /// TODO is there a simpler way to get preferences back?
  /// AF 15/1/2021
  Future<String> getConfig() async {
    // myInfo = MyNodeInfo();
    // nodes = Map(); // nodes keyed by ID, empty map
    // _nodesByNum = Map(); // nodes keyed by nodenum
    // radioConfig = RadioConfig(); //TODO empty object?
    // currentPacketId = 0; //TODO this default is Ok, not null?

    var getConfig = ToRadio();
    getConfig.wantConfigId = MY_CONFIG_ID; // we don't use this value
    await _sendToRadio(getConfig); //uses super BLEInterface
    await _readFromRadio(); // will handle response and update local radioConfig
    userLogger.i(
        'BLEInterface getConfig() Prefs:\n${localNode.radioConfig.preferences.toString()}');
    return localNode.radioConfig.preferences.toString();
  }

  //@override
  Future<void> _readFromRadio() async {
    // appLogger.d("Reading from Radio: ");
    bool wasEmpty = false;

    // read from Mesh device until empty
    // AF 23/2/21 need a Future.doWhile(() with async code
    // TODO - when reading two reads, do we need to concatenate the bytes?
    //   Or does a whole command arrive.
    // add error handling, as _handleFromRadio can throw
    await Future.doWhile(() async {
      // while (!wasEmpty) {
      //List<int> bytes = this.device.char_read(FROMRADIO_UUID);

      // Leads to Exception has occurred.
      // PlatformException (PlatformException(read_characteristic_error, unknown reason,
      // may occur if readCharacteristic was called before last read finished., null, null))

      // AF 9/1/20 try: CrazyAndy from https://github.com/pauldemarco/flutter_blue/issues/432
      // get PlatformException(set_notification_error, could not locate CCCD descriptor
      //  for characteristic: 8ba2bcc2-ee02-4a55-a531-c525c5e454d5, null, null)
      // so the fromRadio char on Meshtastic does not support Notification - need to use .read
      userLogger.v(
          '_readFromRadio c.isNotifying ${device.toRadio.isNotifying} c.read ${device.toRadio.properties.write}');
      userLogger.v('_readFromRadio read from  ${device.id.toString()}');

      List<int> bytes = await device.fromRadio.read();
      wasEmpty = (bytes.length == 0);
      if (!wasEmpty) _handleFromRadio(bytes);
      return !wasEmpty;
    });
  }
}
