// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'setup_device_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetupDeviceEventTearOff {
  const _$SetupDeviceEventTearOff();

// ignore: unused_element
  DeviceStartedEvent started(MeshDevice device) {
    return DeviceStartedEvent(
      device,
    );
  }

// ignore: unused_element
  DeviceCommandEvent command(MeshCommand meshCommand) {
    return DeviceCommandEvent(
      meshCommand,
    );
  }

// ignore: unused_element
  DeviceEventEvent eventRaised(MeshtasticReceive meshEvent) {
    return DeviceEventEvent(
      meshEvent,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetupDeviceEvent = _$SetupDeviceEventTearOff();

/// @nodoc
mixin _$SetupDeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(MeshDevice device),
    @required TResult command(MeshCommand meshCommand),
    @required TResult eventRaised(MeshtasticReceive meshEvent),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(MeshDevice device),
    TResult command(MeshCommand meshCommand),
    TResult eventRaised(MeshtasticReceive meshEvent),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DeviceStartedEvent value),
    @required TResult command(DeviceCommandEvent value),
    @required TResult eventRaised(DeviceEventEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DeviceStartedEvent value),
    TResult command(DeviceCommandEvent value),
    TResult eventRaised(DeviceEventEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SetupDeviceEventCopyWith<$Res> {
  factory $SetupDeviceEventCopyWith(
          SetupDeviceEvent value, $Res Function(SetupDeviceEvent) then) =
      _$SetupDeviceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetupDeviceEventCopyWithImpl<$Res>
    implements $SetupDeviceEventCopyWith<$Res> {
  _$SetupDeviceEventCopyWithImpl(this._value, this._then);

  final SetupDeviceEvent _value;
  // ignore: unused_field
  final $Res Function(SetupDeviceEvent) _then;
}

/// @nodoc
abstract class $DeviceStartedCopyWith<$Res> {
  factory $DeviceStartedCopyWith(
          DeviceStartedEvent value, $Res Function(DeviceStartedEvent) then) =
      _$DeviceStartedCopyWithImpl<$Res>;
  $Res call({MeshDevice device});
}

/// @nodoc
class _$DeviceStartedCopyWithImpl<$Res>
    extends _$SetupDeviceEventCopyWithImpl<$Res>
    implements $DeviceStartedCopyWith<$Res> {
  _$DeviceStartedCopyWithImpl(
      DeviceStartedEvent _value, $Res Function(DeviceStartedEvent) _then)
      : super(_value, (v) => _then(v as DeviceStartedEvent));

  @override
  DeviceStartedEvent get _value => super._value as DeviceStartedEvent;

  @override
  $Res call({
    Object device = freezed,
  }) {
    return _then(DeviceStartedEvent(
      device == freezed ? _value.device : device as MeshDevice,
    ));
  }
}

/// @nodoc
class _$DeviceStarted implements DeviceStartedEvent {
  const _$DeviceStarted(this.device) : assert(device != null);

  @override
  final MeshDevice device;

  @override
  String toString() {
    return 'SetupDeviceEvent.started(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceStartedEvent &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $DeviceStartedCopyWith<DeviceStartedEvent> get copyWith =>
      _$DeviceStartedCopyWithImpl<DeviceStartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(MeshDevice device),
    @required TResult command(MeshCommand meshCommand),
    @required TResult eventRaised(MeshtasticReceive meshEvent),
  }) {
    assert(started != null);
    assert(command != null);
    assert(eventRaised != null);
    return started(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(MeshDevice device),
    TResult command(MeshCommand meshCommand),
    TResult eventRaised(MeshtasticReceive meshEvent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DeviceStartedEvent value),
    @required TResult command(DeviceCommandEvent value),
    @required TResult eventRaised(DeviceEventEvent value),
  }) {
    assert(started != null);
    assert(command != null);
    assert(eventRaised != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DeviceStartedEvent value),
    TResult command(DeviceCommandEvent value),
    TResult eventRaised(DeviceEventEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class DeviceStartedEvent implements SetupDeviceEvent {
  const factory DeviceStartedEvent(MeshDevice device) = _$DeviceStarted;

  MeshDevice get device;
  @JsonKey(ignore: true)
  $DeviceStartedCopyWith<DeviceStartedEvent> get copyWith;
}

/// @nodoc
abstract class $DeviceCommandCopyWith<$Res> {
  factory $DeviceCommandCopyWith(
          DeviceCommandEvent value, $Res Function(DeviceCommandEvent) then) =
      _$DeviceCommandCopyWithImpl<$Res>;
  $Res call({MeshCommand meshCommand});
}

/// @nodoc
class _$DeviceCommandCopyWithImpl<$Res>
    extends _$SetupDeviceEventCopyWithImpl<$Res>
    implements $DeviceCommandCopyWith<$Res> {
  _$DeviceCommandCopyWithImpl(
      DeviceCommandEvent _value, $Res Function(DeviceCommandEvent) _then)
      : super(_value, (v) => _then(v as DeviceCommandEvent));

  @override
  DeviceCommandEvent get _value => super._value as DeviceCommandEvent;

  @override
  $Res call({
    Object meshCommand = freezed,
  }) {
    return _then(DeviceCommandEvent(
      meshCommand == freezed ? _value.meshCommand : meshCommand as MeshCommand,
    ));
  }
}

/// @nodoc
class _$DeviceCommand implements DeviceCommandEvent {
  const _$DeviceCommand(this.meshCommand) : assert(meshCommand != null);

  @override
  final MeshCommand meshCommand;

  @override
  String toString() {
    return 'SetupDeviceEvent.command(meshCommand: $meshCommand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceCommandEvent &&
            (identical(other.meshCommand, meshCommand) ||
                const DeepCollectionEquality()
                    .equals(other.meshCommand, meshCommand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(meshCommand);

  @JsonKey(ignore: true)
  @override
  $DeviceCommandCopyWith<DeviceCommandEvent> get copyWith =>
      _$DeviceCommandCopyWithImpl<DeviceCommandEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(MeshDevice device),
    @required TResult command(MeshCommand meshCommand),
    @required TResult eventRaised(MeshtasticReceive meshEvent),
  }) {
    assert(started != null);
    assert(command != null);
    assert(eventRaised != null);
    return command(meshCommand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(MeshDevice device),
    TResult command(MeshCommand meshCommand),
    TResult eventRaised(MeshtasticReceive meshEvent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (command != null) {
      return command(meshCommand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DeviceStartedEvent value),
    @required TResult command(DeviceCommandEvent value),
    @required TResult eventRaised(DeviceEventEvent value),
  }) {
    assert(started != null);
    assert(command != null);
    assert(eventRaised != null);
    return command(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DeviceStartedEvent value),
    TResult command(DeviceCommandEvent value),
    TResult eventRaised(DeviceEventEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (command != null) {
      return command(this);
    }
    return orElse();
  }
}

abstract class DeviceCommandEvent implements SetupDeviceEvent {
  const factory DeviceCommandEvent(MeshCommand meshCommand) = _$DeviceCommand;

  MeshCommand get meshCommand;
  @JsonKey(ignore: true)
  $DeviceCommandCopyWith<DeviceCommandEvent> get copyWith;
}

/// @nodoc
abstract class $DeviceEventCopyWith<$Res> {
  factory $DeviceEventCopyWith(
          DeviceEventEvent value, $Res Function(DeviceEventEvent) then) =
      _$DeviceEventCopyWithImpl<$Res>;
  $Res call({MeshtasticReceive meshEvent});
}

/// @nodoc
class _$DeviceEventCopyWithImpl<$Res>
    extends _$SetupDeviceEventCopyWithImpl<$Res>
    implements $DeviceEventCopyWith<$Res> {
  _$DeviceEventCopyWithImpl(
      DeviceEventEvent _value, $Res Function(DeviceEventEvent) _then)
      : super(_value, (v) => _then(v as DeviceEventEvent));

  @override
  DeviceEventEvent get _value => super._value as DeviceEventEvent;

  @override
  $Res call({
    Object meshEvent = freezed,
  }) {
    return _then(DeviceEventEvent(
      meshEvent == freezed ? _value.meshEvent : meshEvent as MeshtasticReceive,
    ));
  }
}

/// @nodoc
class _$DeviceEvent implements DeviceEventEvent {
  const _$DeviceEvent(this.meshEvent) : assert(meshEvent != null);

  @override
  final MeshtasticReceive meshEvent;

  @override
  String toString() {
    return 'SetupDeviceEvent.eventRaised(meshEvent: $meshEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceEventEvent &&
            (identical(other.meshEvent, meshEvent) ||
                const DeepCollectionEquality()
                    .equals(other.meshEvent, meshEvent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(meshEvent);

  @JsonKey(ignore: true)
  @override
  $DeviceEventCopyWith<DeviceEventEvent> get copyWith =>
      _$DeviceEventCopyWithImpl<DeviceEventEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(MeshDevice device),
    @required TResult command(MeshCommand meshCommand),
    @required TResult eventRaised(MeshtasticReceive meshEvent),
  }) {
    assert(started != null);
    assert(command != null);
    assert(eventRaised != null);
    return eventRaised(meshEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(MeshDevice device),
    TResult command(MeshCommand meshCommand),
    TResult eventRaised(MeshtasticReceive meshEvent),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventRaised != null) {
      return eventRaised(meshEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(DeviceStartedEvent value),
    @required TResult command(DeviceCommandEvent value),
    @required TResult eventRaised(DeviceEventEvent value),
  }) {
    assert(started != null);
    assert(command != null);
    assert(eventRaised != null);
    return eventRaised(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(DeviceStartedEvent value),
    TResult command(DeviceCommandEvent value),
    TResult eventRaised(DeviceEventEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (eventRaised != null) {
      return eventRaised(this);
    }
    return orElse();
  }
}

abstract class DeviceEventEvent implements SetupDeviceEvent {
  const factory DeviceEventEvent(MeshtasticReceive meshEvent) = _$DeviceEvent;

  MeshtasticReceive get meshEvent;
  @JsonKey(ignore: true)
  $DeviceEventCopyWith<DeviceEventEvent> get copyWith;
}

/// @nodoc
class _$SetupDeviceStateTearOff {
  const _$SetupDeviceStateTearOff();

// ignore: unused_element
  DeviceInitialState initial() {
    return const DeviceInitialState();
  }

// ignore: unused_element
  DeviceInProgressState requested() {
    return const DeviceInProgressState();
  }

// ignore: unused_element
  DeviceSuccessState completed(String message) {
    return DeviceSuccessState(
      message,
    );
  }

// ignore: unused_element
  DeviceFailureState failed(CommandFailure failure) {
    return DeviceFailureState(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetupDeviceState = _$SetupDeviceStateTearOff();

/// @nodoc
mixin _$SetupDeviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requested(),
    @required TResult completed(String message),
    @required TResult failed(CommandFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requested(),
    TResult completed(String message),
    TResult failed(CommandFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(DeviceInitialState value),
    @required TResult requested(DeviceInProgressState value),
    @required TResult completed(DeviceSuccessState value),
    @required TResult failed(DeviceFailureState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(DeviceInitialState value),
    TResult requested(DeviceInProgressState value),
    TResult completed(DeviceSuccessState value),
    TResult failed(DeviceFailureState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SetupDeviceStateCopyWith<$Res> {
  factory $SetupDeviceStateCopyWith(
          SetupDeviceState value, $Res Function(SetupDeviceState) then) =
      _$SetupDeviceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetupDeviceStateCopyWithImpl<$Res>
    implements $SetupDeviceStateCopyWith<$Res> {
  _$SetupDeviceStateCopyWithImpl(this._value, this._then);

  final SetupDeviceState _value;
  // ignore: unused_field
  final $Res Function(SetupDeviceState) _then;
}

/// @nodoc
abstract class $DeviceInitialCopyWith<$Res> {
  factory $DeviceInitialCopyWith(
          DeviceInitialState value, $Res Function(DeviceInitialState) then) =
      _$DeviceInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceInitialCopyWithImpl<$Res>
    extends _$SetupDeviceStateCopyWithImpl<$Res>
    implements $DeviceInitialCopyWith<$Res> {
  _$DeviceInitialCopyWithImpl(
      DeviceInitialState _value, $Res Function(DeviceInitialState) _then)
      : super(_value, (v) => _then(v as DeviceInitialState));

  @override
  DeviceInitialState get _value => super._value as DeviceInitialState;
}

/// @nodoc
class _$DeviceInitial implements DeviceInitialState {
  const _$DeviceInitial();

  @override
  String toString() {
    return 'SetupDeviceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requested(),
    @required TResult completed(String message),
    @required TResult failed(CommandFailure failure),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requested(),
    TResult completed(String message),
    TResult failed(CommandFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(DeviceInitialState value),
    @required TResult requested(DeviceInProgressState value),
    @required TResult completed(DeviceSuccessState value),
    @required TResult failed(DeviceFailureState value),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(DeviceInitialState value),
    TResult requested(DeviceInProgressState value),
    TResult completed(DeviceSuccessState value),
    TResult failed(DeviceFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeviceInitialState implements SetupDeviceState {
  const factory DeviceInitialState() = _$DeviceInitial;
}

/// @nodoc
abstract class $DeviceInProgressCopyWith<$Res> {
  factory $DeviceInProgressCopyWith(DeviceInProgressState value,
          $Res Function(DeviceInProgressState) then) =
      _$DeviceInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceInProgressCopyWithImpl<$Res>
    extends _$SetupDeviceStateCopyWithImpl<$Res>
    implements $DeviceInProgressCopyWith<$Res> {
  _$DeviceInProgressCopyWithImpl(
      DeviceInProgressState _value, $Res Function(DeviceInProgressState) _then)
      : super(_value, (v) => _then(v as DeviceInProgressState));

  @override
  DeviceInProgressState get _value => super._value as DeviceInProgressState;
}

/// @nodoc
class _$DeviceInProgress implements DeviceInProgressState {
  const _$DeviceInProgress();

  @override
  String toString() {
    return 'SetupDeviceState.requested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requested(),
    @required TResult completed(String message),
    @required TResult failed(CommandFailure failure),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requested(),
    TResult completed(String message),
    TResult failed(CommandFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(DeviceInitialState value),
    @required TResult requested(DeviceInProgressState value),
    @required TResult completed(DeviceSuccessState value),
    @required TResult failed(DeviceFailureState value),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(DeviceInitialState value),
    TResult requested(DeviceInProgressState value),
    TResult completed(DeviceSuccessState value),
    TResult failed(DeviceFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class DeviceInProgressState implements SetupDeviceState {
  const factory DeviceInProgressState() = _$DeviceInProgress;
}

/// @nodoc
abstract class $DeviceSuccessCopyWith<$Res> {
  factory $DeviceSuccessCopyWith(
          DeviceSuccessState value, $Res Function(DeviceSuccessState) then) =
      _$DeviceSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DeviceSuccessCopyWithImpl<$Res>
    extends _$SetupDeviceStateCopyWithImpl<$Res>
    implements $DeviceSuccessCopyWith<$Res> {
  _$DeviceSuccessCopyWithImpl(
      DeviceSuccessState _value, $Res Function(DeviceSuccessState) _then)
      : super(_value, (v) => _then(v as DeviceSuccessState));

  @override
  DeviceSuccessState get _value => super._value as DeviceSuccessState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(DeviceSuccessState(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$DeviceSuccess implements DeviceSuccessState {
  const _$DeviceSuccess(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SetupDeviceState.completed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceSuccessState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DeviceSuccessCopyWith<DeviceSuccessState> get copyWith =>
      _$DeviceSuccessCopyWithImpl<DeviceSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requested(),
    @required TResult completed(String message),
    @required TResult failed(CommandFailure failure),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return completed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requested(),
    TResult completed(String message),
    TResult failed(CommandFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(DeviceInitialState value),
    @required TResult requested(DeviceInProgressState value),
    @required TResult completed(DeviceSuccessState value),
    @required TResult failed(DeviceFailureState value),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(DeviceInitialState value),
    TResult requested(DeviceInProgressState value),
    TResult completed(DeviceSuccessState value),
    TResult failed(DeviceFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class DeviceSuccessState implements SetupDeviceState {
  const factory DeviceSuccessState(String message) = _$DeviceSuccess;

  String get message;
  @JsonKey(ignore: true)
  $DeviceSuccessCopyWith<DeviceSuccessState> get copyWith;
}

/// @nodoc
abstract class $DeviceFailureCopyWith<$Res> {
  factory $DeviceFailureCopyWith(
          DeviceFailureState value, $Res Function(DeviceFailureState) then) =
      _$DeviceFailureCopyWithImpl<$Res>;
  $Res call({CommandFailure failure});

  $CommandFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$DeviceFailureCopyWithImpl<$Res>
    extends _$SetupDeviceStateCopyWithImpl<$Res>
    implements $DeviceFailureCopyWith<$Res> {
  _$DeviceFailureCopyWithImpl(
      DeviceFailureState _value, $Res Function(DeviceFailureState) _then)
      : super(_value, (v) => _then(v as DeviceFailureState));

  @override
  DeviceFailureState get _value => super._value as DeviceFailureState;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(DeviceFailureState(
      failure == freezed ? _value.failure : failure as CommandFailure,
    ));
  }

  @override
  $CommandFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CommandFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$DeviceFailure implements DeviceFailureState {
  const _$DeviceFailure(this.failure) : assert(failure != null);

  @override
  final CommandFailure failure;

  @override
  String toString() {
    return 'SetupDeviceState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceFailureState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $DeviceFailureCopyWith<DeviceFailureState> get copyWith =>
      _$DeviceFailureCopyWithImpl<DeviceFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requested(),
    @required TResult completed(String message),
    @required TResult failed(CommandFailure failure),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requested(),
    TResult completed(String message),
    TResult failed(CommandFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(DeviceInitialState value),
    @required TResult requested(DeviceInProgressState value),
    @required TResult completed(DeviceSuccessState value),
    @required TResult failed(DeviceFailureState value),
  }) {
    assert(initial != null);
    assert(requested != null);
    assert(completed != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(DeviceInitialState value),
    TResult requested(DeviceInProgressState value),
    TResult completed(DeviceSuccessState value),
    TResult failed(DeviceFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class DeviceFailureState implements SetupDeviceState {
  const factory DeviceFailureState(CommandFailure failure) = _$DeviceFailure;

  CommandFailure get failure;
  @JsonKey(ignore: true)
  $DeviceFailureCopyWith<DeviceFailureState> get copyWith;
}
