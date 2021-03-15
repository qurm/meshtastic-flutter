// Common for Ennums and other objects required in multiple layers
// Import into domain and service layer

import 'package:flutter_blue/flutter_blue.dart';

/// copies of Bluetooth Enums to avoid refs to flutter_blue
/// these should keep the same order as fluter_blue, but can be renamed
enum BLEDeviceType { unknown, classic, le, dual }
enum BLEDeviceState { disconnected, connecting, connected, disconnecting }

/// State of the bluetooth adapter.
enum BLEState {
  unknown,
  unavailable,
  unauthorized,
  turningOn,
  on,
  turningOff,
  off
}

// 8ba2bcc2-ee02-4a55-a531-c525c5e454d5
// read
// fromradio - contains a newly received FromRadio packet destined towards the phone (up to MAXPACKET bytes per packet).
// After reading the esp32 will put the next packet in this mailbox. If the FIFO is empty it will put an empty packet in this mailbox.

// f75c76d2-129e-4dad-a1dd-7866124401e7
// write
// toradio - write ToRadio protobufs to this characteristic to send them (up to MAXPACKET len)

// ed9da18c-a800-4f66-a670-aa7547e34453
// read,notify,write
// fromnum - the current packet # in the message waiting inside fromradio, if the phone sees this notify it should read messages
// until it catches up with this number.
const fromRadioUuidStr = '8ba2bcc2-ee02-4a55-a531-c525c5e454d5';
final Guid fromRadioUuid = Guid(fromRadioUuidStr);
const toRadioUuidStr = 'f75c76d2-129e-4dad-a1dd-7866124401e7';
final Guid toRadioUuid = Guid(toRadioUuidStr);
const fromNumUuidStr = 'ed9da18c-a800-4f66-a670-aa7547e34453';
final Guid fromNumUuid = Guid(fromNumUuidStr);

class BLEService {
  Guid uuid;
  String serviceName; //friendly name, enriched data from json list
  String deviceId;
  bool isPrimary;
  List<BLECharacteristic> characteristics = [];
  List<BLEService> includedServices = [];

  BLEService(this.uuid, this.deviceId, this.isPrimary, this.characteristics,
      this.includedServices);
  //
  BLEService.fromBluetoothService(BluetoothService service) {
    uuid = service.uuid;
    deviceId = service.deviceId.toString();
    service.characteristics.forEach((c) {
      characteristics.add(BLECharacteristic.fromBluetoothCharacteristic(c));
    });

    // this.includedServices = [];
    service.includedServices.forEach((s) {
      includedServices.add(BLEService.fromBluetoothService(s));
    });
    switch (uuid.toString()) {
      case '6ba1b218-15a8-461f-9fa8-5dcae273eafd':
        serviceName = 'Meshtastic';
        break;
      case '00001800-0000-1000-8000-00805f9b34fb':
        serviceName = 'Generic Access';
        break;
      case '00001801-0000-1000-8000-00805f9b34fb':
        serviceName = 'Generic Attribute';
        break;
      default:
        serviceName = 'Unknown';
    }
  }

  // is this needed.  or pass thru to flutter_blue?
  String toString() {
    return 'BluetoothService{uuid: $uuid, deviceId: $deviceId, isPrimary: $isPrimary, characteristics: $characteristics, includedServices: $includedServices}';
  }
}

class BLECharacteristic {
  Guid uuid;
  String name; //friendly name, enriched data from json list
  String deviceId;
  Guid serviceUuid;
  Guid secondaryServiceUuid;
  CharacteristicProperties properties;
  List<BLEDescriptor> descriptors = [];
  bool isNotifying =
      false; //default as descriptor may be null, so fb cannot provide
  BluetoothCharacteristic _characteristic; //todo - is this needed?

  BLECharacteristic(this.uuid, this.deviceId, this.serviceUuid,
      this.secondaryServiceUuid, this.properties, this.descriptors);
  //
  BLECharacteristic.fromBluetoothCharacteristic(BluetoothCharacteristic char) {
    _characteristic = char;
    uuid = char.uuid;
    deviceId = char.deviceId.toString();
    serviceUuid = char.serviceUuid;
    secondaryServiceUuid = char.secondaryServiceUuid;
    properties = char.properties;
    // this.descriptors=[] //initialise to avoid .add on null
    // can descriptors be null
    char.descriptors.forEach((d) {
      descriptors.add(BLEDescriptor.fromBluetoothDescriptor(d));
    });
    //BUG here - can't check isNotifying this for 1800 - no descriptor?
    // this.isNotifying = char.isNotifying;
    //logger.w('BLECharacteristic ${char?.isNotifying}');
    switch (uuid.toString()) {
      case fromRadioUuidStr:
        name = 'from Radio';
        break;
      case toRadioUuidStr:
        name = 'to Radio';
        break;
      case fromNumUuidStr:
        name = 'from Num';
        break;
      default:
        name = 'Unknown';
    }
  }

  Stream<List<int>> get value => _characteristic.value;

  List<int> get lastValue => _characteristic.lastValue;

  /// Retrieves the value of a specified characteristic
  /// Is a list of byte values?
  Future<List<int>> read() async {
    return await _characteristic.read();
  }

  /// Writes the value of a characteristic.
  /// [withoutResponse]: the write is not
  /// guaranteed and will return immediately with success.
  /// [withResponse] the method will return after the
  /// write operation has either passed or failed.
  Future<Null> write(List<int> value, {bool withoutResponse}) async {
    final type = withoutResponse ? true : false;
    return await _characteristic.write(value, withoutResponse: type);
  }

  /// Sets notifications or indications for the value of a specified characteristic
  Future<bool> setNotifyValue(bool notify) async {
    return await _characteristic.setNotifyValue(notify);
  }
}

/// Note use of cccd write to descriptor to enable Notifications
/// see https://stackoverflow.com/questions/17910322/android-ble-api-gatt-notification-not-received
class BLEDescriptor {
  static final Guid cccd = Guid('00002902-0000-1000-8000-00805f9b34fb');

  Guid uuid;
  String deviceId;
  Guid serviceUuid;
  Guid characteristicUuid;
  BluetoothDescriptor _descriptor; //handle on flutter_blue desc - needed?

  BLEDescriptor(
      this.uuid, this.deviceId, this.serviceUuid, this.characteristicUuid);
  //
  BLEDescriptor.fromBluetoothDescriptor(BluetoothDescriptor desc) {
    _descriptor = desc;
    uuid = desc.uuid;
    deviceId = desc.deviceId.toString();
    serviceUuid = desc.serviceUuid;
    characteristicUuid = desc.characteristicUuid;
  }

  Stream<List<int>> get value => _descriptor.value;

  List<int> get lastValue => _descriptor.lastValue;

  /// Retrieves the value of a specified descriptor
  Future<List<int>> read() async {
    return await _descriptor.read();
  }

  /// Write the value of a specified descriptor
  Future<Null> write(List<int> value) async {
    return await _descriptor.write(value);
  }
}

class BLEAdvertisementData {
  // these should be final, but prevents named constructor!?
  String localName;
  int txPowerLevel;
  bool connectable;
  Map<int, List<int>> manufacturerData;
  Map<String, List<int>> serviceData;
  List<String> serviceUuids = [];

  BLEAdvertisementData.fromAD(AdvertisementData ad) {
    this.localName = ad.localName;
    this.txPowerLevel = ad.txPowerLevel ?? 0; //avoid null
    this.connectable = ad.connectable;
    this.manufacturerData = ad.manufacturerData;
    this.serviceData = ad.serviceData;
    this.serviceUuids = ad.serviceUuids;
  }

  @override
  String toString() {
    return 'AdvertisementData{localName: $localName, txPowerLevel: $txPowerLevel, connectable: $connectable, manufacturerData: $manufacturerData, serviceData: $serviceData, serviceUuids: $serviceUuids}';
  }
}
