// @dart=2.9
part of 'connect_device_bloc.dart';

/// Based on ddd-firebase pattern
/// may need to add parameters Todo
/// see https://bloclibrary.dev/#/blocnamingconventions
/// States should be nouns because a state is just a snapshot at a particular point in time.
/// BlocSubject + Verb (action) + State
/// State should be one of the following: Initial | Success | Failure | InProgress and initial states should follow the convention: BlocSubject + Initial.

/// Purpose of this bloc is to manage getting a list of Mesh devices and connecting to the selected one.
@freezed
abstract class ConnectDeviceState with _$ConnectDeviceState {
  const factory ConnectDeviceState.initial() =
      Initial; //not known - will  move to other state shortly

  //need to distinguish no devices from found devices?
  const factory ConnectDeviceState.connected(BLEDevice2 device) =
      ConnectedState;
  const factory ConnectDeviceState.requested() = ConnectingState;
  const factory ConnectDeviceState.nodevice(ConnectFailure connectFailure) =
      NoDeviceState;
  // const factory ConnectDeviceState.deviceknown(List<BluetoothDevice> deviceList) = DeviceKnown;
  const factory ConnectDeviceState.deviceKnown(deviceList) = DeviceKnownState;
  // when the device has been connected and disconnects
  // could be range, power-off, unpair, etc
  const factory ConnectDeviceState.deviceOffline() = DeviceOfflineState;
  // when the device has been disconnected and reconnects
  // could be range, power-off, unpair, etc
  // const factory ConnectDeviceState.deviceOnline() = DeviceOnlineState;
}
