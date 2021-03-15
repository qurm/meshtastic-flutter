part of 'setup_device_bloc.dart';

@freezed
abstract class SetupDeviceEvent with _$SetupDeviceEvent {
  const factory SetupDeviceEvent.started(MeshDevice device) =
      DeviceStartedEvent;
  const factory SetupDeviceEvent.command(MeshCommand meshCommand) =
      DeviceCommandEvent;
  const factory SetupDeviceEvent.eventRaised(MeshtasticReceive meshEvent) =
      DeviceEventEvent;
  // list other commands, e.g.send message etc
  //const factory SetupDeviceEvent.started() = _Started;
}
