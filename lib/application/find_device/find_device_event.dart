
part of 'find_device_bloc.dart';

@freezed
abstract class FindDeviceEvent with _$FindDeviceEvent {
  const factory FindDeviceEvent.started() = FindStartedEvent;
  const factory FindDeviceEvent.scan() = FindScanRequestedEvent;
  const factory FindDeviceEvent.scanStop() = FindScanStopRequestedEvent;
  const factory FindDeviceEvent.scanComplete() = FindScanCompletedEvent;
  const factory FindDeviceEvent.refresh() = FindRefreshRequestedEvent;
  const factory FindDeviceEvent.refreshComplete() = FindRefreshCompletedEvent;
  // const factory FindDeviceEvent.initialise() = IntialiseRequested;
}
