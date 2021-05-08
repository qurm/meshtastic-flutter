
part of 'connect_device_bloc.dart';

/// see https://bloclibrary.dev/#/blocnamingconventions
/// Events should be named in the past tense because events are things that have already occurred from the bloc's perspective.
/// BlocSubject + Noun (optional) + Verb (event)
/// Initial load events should follow the convention: BlocSubject + Started

/// Events from UI are
/// Initialise (results in a new Scan, or reconnec to last known device)
/// Scan for devices (current connected, and other/new)
/// ConnectPressed, Connect to the device specified (or reconnect to the last known device)
/// Disconnect ?
///
/// Events from BLE are:
/// DeviceSleeping?
/// DeviceAwake, DeviceOn?
/// (plus Stream values for scan results, etc)
//@immutable
@freezed
abstract class ConnectDeviceEvent with _$ConnectDeviceEvent {
  const factory ConnectDeviceEvent.connect(BLEDevice2 device) =
      ConnectPressedEvent;
  const factory ConnectDeviceEvent.connectComplete() = ConnectCompletedEvent;
  const factory ConnectDeviceEvent.initialise() = IntialiseRequestedEvent;
  const factory ConnectDeviceEvent.stateChange(BLEDeviceState deviceState) =
      ConnectStateChangedEvent;
}
