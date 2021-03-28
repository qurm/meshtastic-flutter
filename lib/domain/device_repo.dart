// @dart=2.9
import 'dart:async';

import 'package:collection/collection.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
//AF not sure that this is required/correct in the repo,
// but using the BluetoothState.on - should avaoid.
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

// to do, make this injectable
import '../services/bluetooth/ble_api.dart';
import '../services/bluetooth/ble_common.dart';
import '../services/mesh/mesh.dart';
import 'connect_failure.dart';
import 'value_objects.dart';

/// This is a repository/data level class -extend to handle streams etc
/// and merge with the device_repo file.

/// Per DDD diagram, classes on the repository catch all Exceptions and
/// return them as Failures.
///

final deviceRepoLogger = GetIt.I<Logger>(instanceName: 'appLogger');

// Logger deviceRepoLogger = Logger(
//     printer: PrettyPrinter(
//   methodCount: 4, // number of method calls to be displayed
//   errorMethodCount: 8,
// ) // number of method calls if stacktrace is pr),
//     );

/// Typical scan for a
/// ScanResult{device: BluetoothDevice{id: C4:4F:33:6A:B6:17, name: Meshtastic_b615, type: BluetoothDeviceType.le, isDiscoveringServices: false, _services: [], advertisementData:
/// AdvertisementData{localName: Meshtastic_b615, txPowerLevel: 3, connectable: true, manufacturerData: {}, serviceData: {}, serviceUuids: [6ba1b218-15a8-461f-9fa8-5dcae273eafd]}, rssi: -50},

//todo - create the Abstract class -easier to review methods?

/// Repository class for Mesh devices, BLEDevice,
/// handles all calls to the BLE interface
class DeviceConnect {
  final BlueAPIClient blueAPIClient;
  MeshDevice currentDevice;
  List<BLEDevice2> deviceList = [];
  BLEInterface bleInterface;

  //constructor with required BLE API
  /// the "unit" is defined with dartz
  DeviceConnect({@required this.blueAPIClient})
      : assert(blueAPIClient != null) {
    deviceRepoLogger.v('DeviceConnect constructor');
  }

  //Future<void> connect() return blueAPIClient.connect();

  Future<Either<ConnectFailure, Unit>> connect2(
      DeviceAddress deviceAddress) async {
    try {
      final state = blueAPIClient.state;
      if (state == BluetoothState.on) {
        return right(unit);
      }
      // todo - must return a value
      return right(unit);
    } catch (e) {
      if (e.message.contains('error') != null) {
        return left(const ConnectFailure.nobluetooth());
      } //todo add further elseif
      return left(const ConnectFailure.nobluetooth());
    }
  }

  /// AF this does not appear to return anything, only the Unit/void
  /// other examples set state or value some other way
  Future<Either<ConnectFailure, Unit>> initialise() async {
    ///check the state, either reconnect or scan
    ///
    try {
      final state = blueAPIClient.state;
      if (state == BluetoothState.on) {
        return right(unit);
      }
    } catch (e) {
      if (e.message.contains('error') != null) {
        return left(const ConnectFailure.nobluetooth());
      } //todo add further elseif
    }
  }

  /// These simple states are not really intended for use outside Repo
  /// that state is managed in the Bloc.
  /// Use these within the repository to avoid errors, check before operations
  //Simple pattern without Either<>
  Stream<BLEState> get state => blueAPIClient.state;

  /// True if Bluetooth is turned on on Phone
  Future<bool> get isOn async => await blueAPIClient.isOn;

  /// True if Bluetooth is scanning currently
  Stream<bool> get isScanning => blueAPIClient.isScanning;

  /// Start BLE scan, with advertising filter for Meshtastic devices only.
  ///
  ///  note, can supply   List<Guid> withServices = const [],
  /// Meshtastic device serviceUuids = [6ba1b218-15a8-461f-9fa8-5dcae273eafd]
  Future<void> startScan(int timeoutms) {
    return blueAPIClient.startScan(
        timeoutms: timeoutms,
        serviceUuid: '6ba1b218-15a8-461f-9fa8-5dcae273eafd');
  }

  Future<void> stopScan() {
    return blueAPIClient.stopScan();
  }

  Stream<List<ScannedDevice>> get scanResults {
    return blueAPIClient.scanResults;
  }

  /// Find (known) device in the scan, and return so bloc can connect to it.
  ///
  /// [id] must be valid MAC, like c4:4f:33:6a:a3:cb in lowercase
  /// called from FindDevice bloc on FindStarted
  Future<Either<ConnectFailure, BLEDevice2>> scanConnect(String id) async {
    BLEDevice2 _device;
    try {
      //get the device [id] if already connected
      final _devices = await connectedDevices2;
      if (_devices.isNotEmpty) {
        deviceRepoLogger.d('our id ${id}');
        _device = _devices.firstWhere(
            (result) => equalsIgnoreAsciiCase(result.id.toString(), id),
            orElse: () => null);
        if (_device != null) {
          deviceRepoLogger.d('matches id ${_devices.first.id.toString()}');
          return right(_device);
        }
      } else {
        deviceRepoLogger.d('no match for ${id} in BLE connected devices');
      }
      //not connected already, so scan for [id]
      await startScan(2500);
      final _scanResult = await blueAPIClient.scanResultDevice(id);
      if (_scanResult != null) {
        // convert to BLEDEvice,
        // find_device bloc will then connect to it, maybe already be connected.
        return right(BLEDevice2.fromBluetoothDevice(_scanResult.device));
      } else {
        return left(const ConnectFailure.noKnownDevice());
      }
    } catch (e) {
      //always return some Failure here
      return left(const ConnectFailure.noKnownDevice());
    }
  }

  //Simple pattern without Either<>
  Future<Stream<BLEState>> get state2 async {
    Stream<BLEState> _state;
    try {
      _state = blueAPIClient.state;
      //to do process this stream, and log each item
      // await for (var device in devices) {
      //   print(device.toString());
      //todo go into services
      // }
      // try to filter by the GUID for Mesh
      return _state;
    } catch (e) {
      print(e);
      return const Stream.empty();
      //? BluetoothState.unavailable
    }
  }

  /// Creates the BLEInterface/MeshInterface for the [meshd] device
  /// and initiailises it, async.
  /// called from SetupDeviceBloc
  Future<BLEInterface> meshServiceStart(MeshDevice meshd) async {
    currentDevice = meshd;
    deviceRepoLogger.i('meshServiceStart with device ${meshd.id.toString()}');
    bleInterface = new BLEInterface(currentDevice);
    //may be first call to BLE/GATT - triggers any Platform exceptions
    await bleInterface.init();
    return bleInterface;
  }

  /// Gets list of connected devices, and wraps in BLEDevice class
  /// There are low overheads with this.
  Future<List<BLEDevice2>> get connectedDevices2 async {
    return await blueAPIClient.connectedDevices2;
  }

  /// Gets list of connected devices, and wraps in MeshDevice class
  /// to provide Mesh methods
  /// There are overheads with this, as tries to initialise
  /// each device, list BLE services etc
  Future<List<MeshDevice>> get connectedDevices3 async {
    return await blueAPIClient.connectedDevices3;
  }

  // This stream in the repo keeps running indefinitely when UI is elsewhere
  // dont use this approach - use bloc to update UI only when needed.
  Stream<List<MeshDevice>> get connectedDevicesPeriodicStream async* {
    yield* Stream.periodic(const Duration(seconds: 12))
        .asyncMap((_) async => blueAPIClient.connectedDevices3);
  }

  /// Simple pattern without Either<>
  /// a stream for comms?
  /// AF 10/1/21 - commented as currently unused.  Needs attention to currentDevice
  // Future<List<BLEService>> get connectedServices async {
  //   List<BLEService> serviceList = [];
  //   List<BLECharacteristic> characteristics = [];
  //   //Characteristic characteristic;
  //   try {
  //     //blueAPIClient.startScan(4000);
  //     //todo - specify the mesh GUID and scan for that, then connect if found.
  //     // some ambiguity about what is connected, or just paired?
  //     // old comments that not all devices are shown - only if connected to this app?
  //     ///  https://github.com/pauldemarco/flutter_blue/issues/204
  //     deviceList = await blueAPIClient.connectedDevices2;
  //     currentDevice = deviceList[0]; //check for null, or asleep
  //     // Connect first, otherwise error about no Bluetooth GATT
  //     await currentDevice.connect();
  //     final mtu = currentDevice.mtu.first;
  //     await currentDevice.requestMtu(512).timeout(Duration(seconds: 4),
  //         onTimeout: () {
  //       currentDevice.disconnect();
  //     });
  //     await currentDevice.discoverServices();
  //     try {
  //       await for (var serviceList in currentDevice.services) {
  //         serviceList
  //             .asMap()
  //             .map((index, value) => MapEntry(index, _log('index, value')));
  //         //characteristics = await service.characteristics
  //         return serviceList;
  //       }
  //     } catch (e) {
  //       //todo handle this
  //       print(e);
  //       return List();
  //     }
  //     // return blueAPIClient.connectedDevices;
  //     // blueAPIClient
  //     //     .startScan(timeout: Duration(milliseconds: timeoutms))
  //     //     .then((_) => blueAPIClient.stopScan());
  //   } catch (e) {
  //     print(e);
  //     return List();
  //   }
  //   // return blueAPIClient.connectedDevices;
  //   return serviceList;
  // }

  // void _log(String str) {
  //   print(str);
  // }

  /// Pattern with Either<> - how to make this return Devices list?
  // Either<ConnectFailure, List<BluetoothDevice>> get connectedDevices => _connDevices;
  //   void _setConnDevices(Either<ConnectFailure, List<BluetoothDevice>> connDevices) {
  //   _connDevices = connDevices;
  //   }

  // void getConnDevices() async {
  //   ///check the state, either reconnect or scan
  //   ///
  //   await Task(() = blueAPIClient.connectedDevices)
  //     .attempt()
  //     .mapLeftToFailure()
  //     .run()
  //     .then((value) => (return value));
  //   final List<BluetoothDevice> connDevices = await blueAPIClient.connectedDevices;
  //   try {
  //           // await blueAPIClient.connectedDevices;
  //     return right(blueAPIClient.connectedDevices);

  //   } catch (e) {
  //     if (e.message.contains('error')) {
  //       return left(const ConnectFailure.nobluetooth());
  //     } //todo add further elseif
  //   }
  // }

// AF not important now, as can depend on already paired devices for Mesht
  /// AF pattern bsed on ddd-firebase, note_repository.dart
  /// However 2 patterns are there - use Stream for this: ??
  Future<Either<ConnectFailure, Unit>> scan1() async {
    try {
      await blueAPIClient.scanForDevicesStream(4000);
      return right(unit);
    } catch (e) {
      if (e.message.contains('error') != null) {
        return left(const ConnectFailure.noDevice());
      } //todo add further elseif
      //always return some Failure here
      return left(const ConnectFailure.noDevice());
    }
  }

// AF not important now, as can depend on already paired devices for Mesht
  /// AF pattern bsed on ddd-firebase, note_repository.dart
  /// However 2 patterns are there - use Stream for this: ??
  Future<Either<ConnectFailure, Stream<List<ScanResult>>>> scan() async {
    Stream<List<ScanResult>> devices;
    try {
      devices = await blueAPIClient.scanForDevicesStream(4000);
      //to do process this stream, and log each item
      await for (var device in devices) {
        // print(device.toString());
        //todo go into services
      }
      // try to filter by the GUID for Mesh
      return right(devices);
    } catch (e) {
      if (e.message.contains('error') != null) {
        return left(const ConnectFailure.noDevice());
      } //todo add further elseif
      //always return some Failure here
      return left(const ConnectFailure.noDevice());
    }
  }
}

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<ConnectFailure, U>> mapLeftToFailure() {
    return this.map(
      (either) => either.leftMap((obj) {
        try {
          return obj as ConnectFailure;
        } catch (e) {
          throw obj;
        }
      }),
    );
  }
}
