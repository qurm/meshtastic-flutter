
part of 'find_device_bloc.dart';

@freezed
abstract class FindDeviceState with _$FindDeviceState {
  const factory FindDeviceState.initial() =
      FindInitialState; //not known - will  move to other state shortly
  const factory FindDeviceState.completedscan() = FindCompletedScanState;
  // Stream<List<ScannedDevice>> allDevices
  // List<MeshDevice> connectedDevices
  // ) = FindCompletedScanState;
  //need to distinguish no devices from found devices?
  // refresh for Connected devices, not a full scan
  const factory FindDeviceState.completedRefresh(
      List<MeshDevice> connectedDevices) = FindCompletedRefreshState;
  //need to distinguish no devices from found devices?
  const factory FindDeviceState.findRequested() = FindRequestedState;

  /// may need to have own Failures, meanwhile use Connect
  const factory FindDeviceState.failed(ConnectFailure failure) =
      FindFailureState;
}
