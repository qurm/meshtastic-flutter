// @dart=2.9
part of 'setup_device_bloc.dart';

/// see https://bloclibrary.dev/#/blocnamingconventions
/// States should be nouns because a state is just a snapshot at a particular point in time.
/// BlocSubject + Verb (action) + State
/// State should be one of the following: Initial | Success | Failure | InProgress
/// and initial states should follow the convention: BlocSubject + Initial.

@freezed
abstract class SetupDeviceState with _$SetupDeviceState {
  const factory SetupDeviceState.initial() = DeviceInitialState;
  const factory SetupDeviceState.requested() = DeviceInProgressState;
  const factory SetupDeviceState.completed(String message) = DeviceSuccessState;
  const factory SetupDeviceState.failed(CommandFailure failure) =
      DeviceFailureState;
}
