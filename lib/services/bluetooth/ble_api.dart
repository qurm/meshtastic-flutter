/// infrastruture layer
/// communicate with the phone bluetooth
/// really just a generic interface to flutter_blue api - may differ for nrf52 etc.
import 'dart:async';
// import 'dart:io' show Platform;
import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/services.dart';
// https://github.com/flutter/flutter/issues/19499

import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

import 'package:flutter_blue/flutter_blue.dart';
import 'ble_common.dart';
import '../mesh/mesh.dart';

/// based on https://pub.dev/packages/flutter_blue
/// Using the FlutterBlue instance, you can scan for and connect to nearby devices (BluetoothDevice).
/// Once connected to a device, the BluetoothDevice object can discover services (BluetoothService),
/// characteristics (BluetoothCharacteristic), and descriptors (BluetoothDescriptor).
/// The BluetoothDevice object is then used to directly interact with characteristics and descriptors.
///
///
/// Check device is enabled, get state
/// Scan for devices
/// Scan for devices, with a filter condition (only Meshtastic devices)
/// Stop scan
///
/// Connect to device
/// Disconnect
/// MTU read, request size
///
/// Discover, List Services
///
/// Read, Write Characteristics
/// Read, Write Descriptors
/// Subscribe to Notifications, listen to changes, Stream<List<int>>

//FlutterBlue.LogLevel

// see https://github.com/dias-rafael/flutter_examples/grpc_geolocalization/lib/locationWrapper.dart

// see https://github.com/jason-dan/o_rage_julep/blob/c86ae027908cfd6ce39539640c36979b097b435f/lib/services/location_service.dart
// see https://github.com/DTUFeedme/feedme-mobile/blob/2106cdb2b7400b686be39811f142e1c00f26cc99/lib/services/bluetooth.dart

const meshServiceStr = '6ba1b218-15a8-461f-9fa8-5dcae273eafd';
Guid meshServiceUuid = Guid(meshServiceStr);

// final sl = GetIt.instance; //sl = service locator
final Logger userLogger = GetIt.I<Logger>(instanceName: 'userLogger');
final Logger appLogger = GetIt.I<Logger>(instanceName: 'appLogger');

/// Tracks the connected Devices
Map<String, MeshDevice> currentDevices = {};

/// {device: BluetoothDevice{id: C4:4F:33:6A:AC:47, name: Meshtastic_ac45,
///     type: BluetoothDeviceType.le, isDiscoveringServices: false,
/// _services: [],
/// advertisementData: AdvertisementData{localName: Meshtastic_ac45, txPowerLevel: 3, connectable: true, manufacturerData: {}, serviceData: {}, serviceUuids: [6ba1b218-15a8-461f-9fa8-5dcae273eafd]}, rssi: -61}

/// This BLE device is a data class, independent of flutter_blue definitions
/// Is lightweight and can be repeatedly created.
class BLEDevice2 {
  /// default constructor: but mostly uses fromBluetoothDevice
  BLEDevice2(this.id, this.name, this.type) {
    // logger.d('ScannedDevice constructor body: ');
  }
  String id = ''; // 'C4:4F:33:6A:AC:47'
  String name = ''; // 'Meshtastic_ac45', can be null for a non-Meshdevice
  late BLEDeviceType type;
  BLEDeviceState _deviceState = BLEDeviceState.disconnected; //safe default,
  late BluetoothDevice _device; //handle for the flutter_blue device

  final BehaviorSubject<BLEDeviceState> _stateSubject =
      BehaviorSubject.seeded(BLEDeviceState.disconnected);
  // this will keep creating new BLEDevice objects,
  // which are garbage collected - leak?
  // TODO called only for connected devices? see _deviceState
  BLEDevice2.fromBluetoothDevice(BluetoothDevice device) {
    id = device.id.toString();
    name = device.name;
    type = BLEDeviceType.values[device.type.index]; //enum conversion
    // this._deviceState = device.state;
    _device = device;
    //assume called from connectedDevices method, so set = connected
    _deviceState = BLEDeviceState.connected;
    //listen to device and stream to the BehaviorSubject
    _device.state.listen((event) {
      _stateSubject.add(BLEDeviceState.values[event.index]);
    });
    appLogger.i(
        'BLEDevice2.fromBluetoothDevice construct ${id} $hashCode ${_device.hashCode}');
  }

  //Casts the state to the abstracted internal BLEDeviceState
  Stream<BLEDeviceState> get deviceState2 async* {
    Stream<BluetoothDeviceState> _state;
    // appLogger.v('BLEDevice State for ${this.id} $hashCode ${_device.hashCode}');
    //todo change the log, error handling
    _state = _device.state.handleError((e) => print(e));
    await for (var event in _state) {
      // yield event as BLEDeviceState;
      _deviceState = BLEDeviceState.values[event.index];
      yield BLEDeviceState.values[event.index];
      // }
      // yield BLEDeviceState.disconnected; //just a default
    }
  }

  // //Casts the state to the abstracted internal BLEDeviceState
  // Stream<BLEDeviceState> get deviceStateSubject async* {
  //   Stream<BluetoothDeviceState> _state;

  //   // appLogger.v('BLEDevice State for ${this.id} $hashCode ${_device.hashCode}');
  //   //todo change the log, error handling
  //   _state = _device.state.handleError((e) => print(e));
  //   await for (var event in _state) {
  //     // yield event as BLEDeviceState;
  //     _deviceState = BLEDeviceState.values[event.index];
  //     stateSubject.add(BLEDeviceState.values[event.index]);
  //     // }
  //     // yield BLEDeviceState.disconnected; //just a default
  //   }
  // }

  //Casts the state to the abstracted internal BLEDeviceState
  //Now is a BehaviorSubject
  Stream<BLEDeviceState> get deviceState => _stateSubject.stream;

  // should never be null, but dart thinks not null-safe
  // this is sync
  BLEDeviceState get currentState =>
      _stateSubject.value ?? BLEDeviceState.disconnected;

// BLEDeviceState get currentState => ((_stateSubject.hasValue) ? _stateSubject.value : BLEDeviceState.disconnected);
// BLEDeviceState get currentState => ((_stateSubject.hasValue) ? BLEDeviceState.disconnected : BLEDeviceState.disconnected);
  // _stateSubject.stream

  bool get isConnected => (_deviceState == BLEDeviceState.connected);

  Stream<int> get mtu async* {
    Stream<int> _mtu;
    _mtu = _device.mtu.handleError((e) => print(e));
    await for (var event in _mtu) {
      yield event;
    }
  }

  /// Request to change the MTU Size
  /// May be the first BLE call - so first error
  /// Todo handle error - or setup as default for Meshtastic, part of initialist
  /// https://github.com/pauldemarco/flutter_blue/pull/579
  /// add this to flutter blue if needed
  /// https://github.com/pauldemarco/flutter_blue/pull/579/commits/cdaa404fad61d0d9ef91b76dbda2cc900bb24480
  Future<void> requestMtu(int desiredMtu) async {
    try {
      /// Exception if try to discover when not connected.  See this for non-Meshtastic devices.
      return await _device.requestMtu(desiredMtu);
    } on PlatformException catch (err) {
      // PlatformException when device is not available
      appLogger
          .e('requestMtu: handled PlatformException from ${_device.id} $err');
      rethrow;
    } catch (err) {
      // if (e = )
      appLogger.e('requestMtu: $err');

      rethrow;
    }
  }

  /// Returns a Stream of List of Bluetooth GATT [services] offered by the remote device
  /// This function requires that [discoverServices] has been completed for this device
  /// todo - check for discover
  /// check for dodgy meshtastic services
  Stream<List<BLEService>> get services async* {
    Stream<List<BluetoothService>> _serviceList;
    //BluetoothService _service;
    _serviceList = _device.services.handleError((e) => print(e));
    await for (var service in _serviceList) {
      yield service.map((e) => BLEService.fromBluetoothService(e)).toList();
      //TODO - not stable nulls and not found ?
      // best to build this on the fly.
      // try {
      //   _service = service.firstWhere(
      //       (element) => element.uuid == meshServiceUuid,
      //       orElse: () => null);

      //   //null check
      //   meshService = BLEService.fromBluetoothService(_service) ??
      //       new BLEService(Guid.empty(), '', true, null, null);
      // } catch (e) {
      //   //todo - handle error (e)
      //   meshService = new BLEService(Guid.empty(), '', true, null, null);
      // }
    }
  }

  Stream<List<BluetoothService>> get services2 async* {
    Stream<List<BluetoothService>> _services;
    _services = _device.services.handleError((e) => print(e));
    await for (var service in _services) {
      yield service;
    }
  }

  Stream<bool> get isDiscoveringServices => _device.isDiscoveringServices;

  /// Discovers GATT Services offered by the remote device,
  /// their Characteristics and Descriptors
  /// Casts to BLEService
  /// Todo - does handle null, empty list?
  Future<List<BLEService>> discoverServices() async {
    // assign empty List for null safety
    //TODO - check is still connected (sleep, restart etc.)
    // see https://github.com/pauldemarco/flutter_blue/issues/204
    //if (!this.isConnected) await this.connect();
    /// this does not get past the await deviceState.first - why?
    // final s = await deviceState.first;
    // appLogger.d('discoverServices deviceState: ${s.toString()}')
    // if (s != BLEDeviceState.connected) {
    //   throw Future.error(new Exception(
    //       'Cannot discoverServices while device is not connected. State == $s'));
    //   return List(); //return a Failur
    // } else
    // if (this.isConnected)
    // {
    final List<BluetoothService> serviceList = await _device.discoverServices();
    return serviceList
        .map((service) => BLEService.fromBluetoothService(service))
        .toList();
    // } else {
    //   return List(); //return a Failure
    // }
  }

  /// Make connection to the Bluetooth Device.
  /// Todo - validate, avoid duplicate connections?
  Future<void> connect({
    Duration timeout = const Duration(seconds: 4),
    bool autoConnect = true,
  }) async {
    appLogger.v('BLEDevice2.connect to ${id}');
    await _device.connect(timeout: timeout, autoConnect: autoConnect);
    _deviceState = BLEDeviceState.connected;
  }

  Future<void> disconnect() async {
    appLogger.v('BLEAPI disconnect from ${id}');
    _deviceState = BLEDeviceState.disconnected; // to be sure
    return await _device.disconnect();
  }
}

/// Data class for single scan result, based on a BLEDevice
/// Uses plain ScannedDevice, as may include any type of BLE device
class ScannedDevice {
  BLEDevice2? device;
  // MeshDevice device;
  BLEAdvertisementData? advertisementData;
  int? rssi;

  ScannedDevice({this.device, this.advertisementData, this.rssi});

  ScannedDevice.fromScanResult(ScanResult scanresult) {
    appLogger.d('create ScannedDevice.fromscanResult ${scanresult.toString()}');
    device = new BLEDevice2.fromBluetoothDevice(scanresult.device);
    advertisementData =
        new BLEAdvertisementData.fromAD(scanresult.advertisementData);
    rssi = scanresult.rssi;
  }
}

/// class BlueAPIClient implements BlueAPI {
class BlueAPIClient {
  Map? serviceUUID;
  //constructor, intialises and gets current scanning status
  BlueAPIClient() {
    print("flutterBlue.isScanning");
    flutterBlue.isScanning.listen((event) {
      _scanning = event;
    });

    // Map serviceUUID = jsonDecode(service_uuids);
    // loadJson();
  }

  final FlutterBlue flutterBlue = FlutterBlue.instance;
  bool _scanning = false;

  /// TODO - may need to load josn, and use forEach to build the desired map.
  /// see https://stackoverflow.com/questions/57234575/dart-convert-map-to-list-of-objects
  // Future<void> loadJson() async {
  //   String data =
  //       await rootBundle.loadString('assets/service_uuids_index.json');
  //   serviceUUID = json.decode(data);
  //   print(serviceUUID);
  // }

  // // using .then to avoid returing a future.
  // void loadJson2() {
  //   final data = rootBundle.loadString('assets/service_uuids_index.json');
  //   data.then((data) => serviceUUID = json.decode(data));
  //   print(serviceUUID);
  // }

// this.type = BLEDeviceType.values[device.type.index]; //enum conversion

  /// State of the Bluetooth adapter instance
  /// Mapped to [BLEState]
  /// See also [BLEDeviceState]
  Stream<BLEState> get state async* {
    Stream<BluetoothState> _state;
    //todo change the log, error handling
    _state = flutterBlue.state.handleError((e) => print(e));
    await for (var event in _state) {
      yield BLEState.values[event.index]; //enum conversion
    }
  }

  /// Checks Bluetooth is turned on on Phone
  Future<bool> get isOn async => await flutterBlue.isOn;

  /// Checks if Bluetooth is scanning currently
  /// Exception if try to scan when [isScanning]
  Stream<bool> get isScanning => flutterBlue.isScanning;

  /// Checks for presence of [serviceUuid] on a connected device [d]
  Future<bool> hasGATTService(BluetoothDevice d, Guid serviceUuid) async {
    try {
      /// Exception if try to discover when not connected.  See this for non-Meshtastic devices.
      final List<BluetoothService> serviceList = await d.discoverServices();
      final mesh = serviceList.where((s) => s.uuid == serviceUuid);
      // if(mesh.isEmpty) return false else return true;
      return mesh.isNotEmpty;
    } on PlatformException catch (err) {
      // PlatformException when device is already connected via another app
      // PlatformException (PlatformException(discover_services_error,
      appLogger
          .e('hasMeshtasticService: handled PlatformException from ${d.id}');
      throw err;
      return false;
    } catch (err) {
      // if (e = )
      appLogger.e('hasMeshtasticService: $err');

      rethrow;
      return false;
    }
  }

  /// List (not Stream) of devices that are already paired.
  /// Creates repo objects from API objects.  Returns an empty list, not null.
  /// Async Property, not method
  Future<List<BLEDevice2>> get connectedDevices2 async {
    List<BluetoothDevice> deviceList = await flutterBlue.connectedDevices;
    return deviceList.map((d) => BLEDevice2.fromBluetoothDevice(d)).toList();
  }

  /// List (not Stream) of devices that are already connected to this App.
  /// Gets list of connected devices, and wraps in MeshDevice class
  /// to provide Mesh methods
  /// AF 16/01/2021 look at services, and only use desired devices
  Future<List<MeshDevice>> get connectedDevices3 async {
    final deviceList =
        await flutterBlue.connectedDevices; //List<BluetoothDevice>
    // List<MeshDevice> _meshlist = [];
    // List<BluetoothService> _serviceList;
    // BluetoothService _service;
    bool _isMeshDevice = false;
    currentDevices = {}; //set to empty map
    // TODO - how to remove from connected list!! - just by refreshing each 2 secs - clear the list?
    // TODO - move this up to device_repo, and set a flag on the BLEDevice to show is Mesh device?
    // this rebuilds the mesh devices every time this list is called? each 2secs
    if (deviceList.isNotEmpty) {
      //https://stackoverflow.com/questions/42467663/async-await-in-list-foreach
      await Future.forEach(deviceList, (BluetoothDevice d) async {
        appLogger.i('connectedDevices Device reported: ${d.id}');
        if (currentDevices.containsKey(d.id.toString())) {
          appLogger
              .i('connectedDevices Device already in currentDevices ${d.id}');
        } else {
          // _isMeshDevice = true;
          //platform exception seen with Flutter 2.0 for non-Mesh devices here
          //may be connected in another application, so workaround is to connect again
          // try {
          //     await d.connect();
          // } on PlatformException catch (err) {
          //   // PlatformException when device is already connected via another app
          //   // PlatformException (PlatformException(discover_services_error,
          //   appLogger.e(
          //       'connectedDevices3: handled PlatformException ${err} from ${d.id}');
          // } catch (err) {
          //   // if (e = )
          //   appLogger.e('connectedDevices3: $err');

          //   rethrow;
          // }

          // _isMeshDevice = await hasGATTService(d, meshServiceUuid);
          _isMeshDevice = true;
          if (_isMeshDevice) {
            currentDevices[d.id.toString()] = MeshDevice(d);
            appLogger.i(
                'connectedDevices Device added to currentDevices ${d.id} ${currentDevices.toString()}');
          }
        }
      });
      return currentDevices.values.toList();
    } else {
      //clean up list
      //return currentDevices.values.toList();
      return [];
    }
  }

  /// This does not work, list2 is always empty, wrong map?  Use above.
  /// Use of Future.forEach
  /// https://stackoverflow.com/questions/58337093/capture-a-ble-characteristic-and-assign-it-to-a-variable-in-flutter

  // Future<List<BLEDevice2>> get connectedDevices4 async {
  //   List<BluetoothDevice> deviceList = await flutterBlue.connectedDevices;
  //   var list2 = await Future.forEach(
  //       deviceList,
  //       (e) => {
  //             deviceList.map((e) => BLEDevice2.fromBluetoothDevice(e)).toList()
  //           });
  //   return list2 ?? List(); //empty list, not null
  // }

  // enum BluetoothDeviceState { disconnected, connecting, connected, disconnecting }
  // final Stream<BluetoothState> _state;

  /// Start BLE scan. Follow this by getting ScanResults Stream.
  ///
  /// note, can supply   List<Guid> [withServices] = const [],
  /// Meshtastic device serviceUuids = [6ba1b218-15a8-461f-9fa8-5dcae273eafd]
  Future<void> startScan(
      {int timeoutms = 4000, required String serviceUuid}) async {
    appLogger.v('get startScan with ${serviceUuid}');
    List<Guid> guid = []; //todo make a list
    try {
      guid = [Guid(serviceUuid)]; //convert to 16-byte
    } catch (e) {
      print(e); //handle malformed UUID string; raise Exception
      guid = [];
    }
    //TODO seems to start scan anyway?
    if (await flutterBlue.isOn == false || _scanning) {}
    try {
      await flutterBlue
          .startScan(
              timeout: Duration(milliseconds: timeoutms), withServices: guid)
          .then((_) => flutterBlue.stopScan());
    } catch (e) {
      print(e);
    }
  }

  /// Stop BLE scan. Not used, here for completeness.
  Future<void> stopScan() async {
    print('Start stopScan');
    if (await flutterBlue.isOn == false && _scanning) {}
    try {
      await flutterBlue.stopScan();
    } catch (e) {
      print(e);
    }
  }

  /// Process Scan results, return results to Repo in stream,
  ///
  /// Casts list to type ScannedDevice for Repo usage.
  Stream<List<ScannedDevice>> get scanResults async* {
    Stream<List<ScanResult>> _scanList;
    //_scanList should be error free after handling
    _scanList = flutterBlue.scanResults
        .handleError((e) => appLogger.e('get scanResults stream error ${e}'));
    await for (var results in _scanList) {
      appLogger.d('get scanResults ${results.length} devices');
      yield results
          .map((result) => ScannedDevice.fromScanResult(result))
          .toList();
    }
  }

  /// Process Scan results, returns any result matching id.
  ///
  /// May return an empty ScanResult if no match.
  /// called from repo scanConnect
  /// null-safe Future<ScanResult>?
  Future<ScanResult?> scanResultDevice(String? id) async {
    Stream<List<ScanResult>> _scanList;
    ScanResult? _scanResult;

    try {
      _scanList = flutterBlue.scanResults;
      List<ScanResult> resultList = await _scanList.first;

      appLogger.d('get scanResultDevice ${resultList.length} devices');
      if (resultList.isNotEmpty) {
        appLogger.d(
            'list id ${resultList.first.device.id.toString().toLowerCase()}');
        appLogger.d('our id ${id!.toLowerCase()}');
        //TODO this does not get a result
        _scanResult = resultList.firstWhereOrNull((result) =>
            result.device.id.toString().toLowerCase() == id.toLowerCase());
      } else {
        return null;
      }
    } catch (e) {
      appLogger.e('get scanResultDevice ${e.toString()}');
      rethrow;
    }
    return _scanResult;
  }

  // from DTUFeedme - scan method
  /// Scan for other devices (not connected yet)
  Future<Stream<List<ScanResult>>> scanForDevicesStream(int timeoutms) async {
    print('Start scanForDevicesStream');
    if (await flutterBlue.isOn == false || _scanning) {
      return const Stream.empty();
    }
    try {
      await flutterBlue
          .startScan(timeout: Duration(milliseconds: timeoutms))
          .then((_) => flutterBlue.stopScan());
    } catch (e) {
      print(e);
      return const Stream.empty();
    }
    return flutterBlue.scanResults;
  }
}

//to do change UserLocation to a ble binary message

// class LocationService {
//   UserLocation _currentLocation;

//   var location = Location();

//   StreamController<UserLocation> _locationController =
//   StreamController<UserLocation>();

//   Stream<UserLocation> get locationStream => _locationController.stream;

//   LocationService() {
//     // Request permission to use location
//     location.requestPermission().then((granted) {
//       if (granted) {
//         // If granted listen to the onLocationChanged stream and emit over our controller
//         location.onLocationChanged().listen((locationData) {
//           if (locationData != null) {
//             _locationController.add(UserLocation(
//               latitude: locationData.latitude,
//               longitude: locationData.longitude,
//             ));
//           }
//         });
//       }
//     });
//   }

//   Future<UserLocation> getLocation() async {
//     try {
//       var userLocation = await location.getLocation();
//       _currentLocation = UserLocation(
//         latitude: userLocation.latitude,
//         longitude: userLocation.longitude,
//       );
//     } on Exception catch (e) {
//       print('Could not get location: ${e.toString()}');
//     }

//     return _currentLocation;
//   }
// }

// ///
// ///
// ///https://github.com/DiazGopar/chronodrimiunble/blob/575d4b3960581b4a85a4bcee54723e78fdd87041/lib/bloc/bledevice_bloc.dart
// ///
// ///

// /// https://github.com/andersonpaac/ProjectBlanche/blob/f98ef86bd755d79c2f1b51f91c3308dbb521bfc6/Mobile/flutter/HuG/lib/services/BLEService.dart

// class BLEService {
//   FlutterBlue flutterBlue;
//   String pin;
//   int scanDuration = 5;
//   List<ServiceProvider> serviceProviders;
//   BLEConnectionStatus status = BLEConnectionStatus.DISCONNECTED;
//   BluetoothDevice goggles;
//   DateTime lastWritten = DateTime.now();
//   Duration timeBwPackets = Duration(milliseconds: 100);

//   BLEService(List<ServiceProvider> bleServiceProviders) {
//     print("BLEService:: New");
//     flutterBlue = FlutterBlue.instance;
//     serviceProviders = bleServiceProviders;
//     Globals.connectivityController.sink.add(BLEConnectionStatus.DISCONNECTED);
//     Globals.toGogglesController.stream.asBroadcastStream().listen(writeToDevice);
//   }

//   void writeToDevice(BLEPacket packet) {
// //    print("Received request to send $packet");
//     if (status == BLEConnectionStatus.CONNECTED) {
//       DateTime now = DateTime.now();
//       Duration delta = now.difference(lastWritten);
//       if (delta > timeBwPackets) {
// //        print("Sending as delta = $delta");
//         packet.characteristic.write(packet.data);
//       } else {
//         Future.delayed(const Duration(milliseconds: 110), () {
// //          print("Deferred packet for later");
//           writeToDevice(packet);
//         });
//       }
//     } else {
//       print("Did not send: Device is not connected yet.");
//     }
//   }

//   void begin() {
//     disconnect();
//     flutterBlue.stopScan();
//     status = BLEConnectionStatus.SCANNING;
//     Globals.connectivityController.sink.add(BLEConnectionStatus.SCANNING);
//     flutterBlue.startScan(timeout: Duration(seconds: scanDuration));
//     flutterBlue.scanResults.listen(qualify);
//   }

//   Future<void> qualify(List<ScanResult> scanResults) async {
//     if (status == BLEConnectionStatus.SCANNING) {
//       ScanResult qualifiedResult = scanResults.firstWhere((scanResult) {
//         bool qualified = true;
//         serviceProviders.forEach((serviceProvider) {
//           qualified = qualified & serviceProvider.isQualified(scanResult);
//         });
//         String deviceName = scanResult.advertisementData.localName;
//         if (qualified) {
//           print("qualified device $deviceName");
//         }
//         return qualified;
//       }, orElse: () => null);
//       if (qualifiedResult != null) {
//         flutterBlue.stopScan();
//         await connect(qualifiedResult.device);
//       }
//     }
//   }

//   Future<void> connect(BluetoothDevice device) async {
//     if (status == BLEConnectionStatus.SCANNING) {
//       flutterBlue.stopScan();
//       disconnect();
//       status = BLEConnectionStatus.CONNECTING;
//       Globals.connectivityController.sink.add(BLEConnectionStatus.CONNECTING);
//       await device.connect(); // @todo: Handle device not connecting.
//       status = BLEConnectionStatus.CONNECTED;
//       Globals.connectivityController.sink.add(BLEConnectionStatus.CONNECTED);
//       Globals.connectedDeviceController.sink.add(device);
//       goggles = device;
//       List<BluetoothService> services = await device.discoverServices();
//       serviceProviders.forEach((sp) async {sp.deviceDidConnect(goggles, services);});
//     }
//   }

//   void disconnect() {
//     if (status == BLEConnectionStatus.CONNECTED) {
//       goggles.disconnect();
//       serviceProviders.forEach((sp) {sp.deviceDidDisconnect();});
//       goggles = null;
//     }
//     status = BLEConnectionStatus.DISCONNECTED;
//   }

// }
