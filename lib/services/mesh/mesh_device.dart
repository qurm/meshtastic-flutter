// @dart=2.9
import 'dart:async';
import 'package:flutter_blue/flutter_blue.dart';
// import 'package:logger/logger.dart';

import '../bluetooth/bluetooth.dart';

/// Class for addtional specific methods for a Mesh device.
/// Extends the generic BLEDevice class
/// has Meshtastic BLE/GATT  methods, whereas MeshNode has Meshtastic methods
class MeshDevice extends BLEDevice2 {
  // BLEDevice2 device;
  BluetoothDevice device;
  BLEService _meshService; //GATT service for Meshtastic
  List<BLEService> _serviceList;
  BLECharacteristic fromRadio;
  BLECharacteristic toRadio;
  BLECharacteristic fromNum;
  bool isMeshDevice; //flag, true only for Meshtastic devices

  //this will create another super object each time!
  //MeshDevice(this.device) : super(device.id, device.name, device.type);

  // create new instance of this and super object with the new device
  MeshDevice(BluetoothDevice connectedDevice)
      : device = connectedDevice,
        super.fromBluetoothDevice(connectedDevice)

  //todo call void method to intialise constructor body
  {
    appLogger.d('MeshDevice constructor body: ${device.id}');
    // initialiseMeshService();  //see below moved due to async
  }

  /// Discover and setup Meshtastic GATT Characteristics.
  /// has async calls, so cannot be in class constructor
  /// called from mesh BLEInterface init in mesh_api
  Future<bool> initialiseMeshService() async {
    //List<BLEService> _serviceList;
    bool _intialised = false;

    // if (super._deviceState == BLEDeviceState.connected) {
    // appLogger.d('initialiseMeshService() Is connected ');
    _serviceList = await super.discoverServices();
    //this goes to async wait here
    appLogger.d(
        'initialiseMeshService() start ${super.id} Services found: ${_serviceList.length} ');
    if (_serviceList.length > 0) {
      // for (var service in _serviceList) {
      _meshService = _serviceList.firstWhere((s) => s.uuid == meshServiceUuid);
      fromRadio = _meshService.characteristics
          .firstWhere((char) => char.uuid == fromRadioUuid);
      toRadio = _meshService.characteristics
          .firstWhere((char) => char.uuid == toRadioUuid);
      fromNum = _meshService.characteristics
          .firstWhere((char) => char.uuid == fromNumUuid);
      appLogger.v(
          'initialiseMeshService() Char fromRadio found: ${fromRadio.uuid.toString()} ');
      appLogger.v(
          'initialiseMeshService() Char toRadio found: ${toRadio.uuid.toString()} ');
      appLogger.v(
          'initialiseMeshService() Char fromNum found: ${fromNum.uuid.toString()} ');

      _intialised = true;
      // _readFromRadio(); // read the initial responses

    } else {
      _intialised = false;
      appLogger.e(
          'initialiseMeshService() No services found: ${super.id.toString()} ');
    }
    return _intialised;
  }

  /// Note that a char.read is a List<int>
  /// and a char.value is Stream<List<int>>
  Stream<List<int>> fromRadioValue(BLEService s) {
    fromRadio =
        s.characteristics.firstWhere((char) => char.uuid == fromRadioUuid);
    return fromRadio.value;
  }

  /// Filter the list put back into the stream
  /// TODO - this does not work - seems to return null lists etc
  /// temp filtered out - do in UI or higher layer.
  /// can ignore other services
  Stream<List<BLEService>> get meshService async* {
    Stream<List<BLEService>> _serviceList;
    // _serviceList = super.services;
    yield* super.services;

    /// TODO - this does not work - seems to return null lists etc
    //await for _serviceList {
    // yield*  _serviceList.where((s) => s. .uuid == meshServiceUuid);
    // appLogger.v('meshService stream list: ${service.first.toString()}');
    // }
  }

  // Future<BLEService> get meshService2 async {
  //   List<BLEService> _serviceList;
  //   _serviceList = await super.discoverServices();
  //   //yield* super.services;

  //   for (var service in _serviceList) {
  //     return _serviceList.firstWhere((s) => s.uuid == meshServiceUuid);
  //     // appLogger.v('meshService2: ${service.toString()}');
  //   }
  // }

}
