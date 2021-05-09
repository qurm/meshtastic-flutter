// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connect_device_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectDeviceEventTearOff {
  const _$ConnectDeviceEventTearOff();

  ConnectPressedEvent connect(BLEDevice2 device) {
    return ConnectPressedEvent(
      device,
    );
  }

  ConnectCompletedEvent connectComplete() {
    return const ConnectCompletedEvent();
  }

  IntialiseRequestedEvent initialise() {
    return const IntialiseRequestedEvent();
  }

  ConnectStateChangedEvent stateChange(BLEDeviceState deviceState) {
    return ConnectStateChangedEvent(
      deviceState,
    );
  }
}

/// @nodoc
const $ConnectDeviceEvent = _$ConnectDeviceEventTearOff();

/// @nodoc
mixin _$ConnectDeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BLEDevice2 device) connect,
    required TResult Function() connectComplete,
    required TResult Function() initialise,
    required TResult Function(BLEDeviceState deviceState) stateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BLEDevice2 device)? connect,
    TResult Function()? connectComplete,
    TResult Function()? initialise,
    TResult Function(BLEDeviceState deviceState)? stateChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectPressedEvent value) connect,
    required TResult Function(ConnectCompletedEvent value) connectComplete,
    required TResult Function(IntialiseRequestedEvent value) initialise,
    required TResult Function(ConnectStateChangedEvent value) stateChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectPressedEvent value)? connect,
    TResult Function(ConnectCompletedEvent value)? connectComplete,
    TResult Function(IntialiseRequestedEvent value)? initialise,
    TResult Function(ConnectStateChangedEvent value)? stateChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectDeviceEventCopyWith<$Res> {
  factory $ConnectDeviceEventCopyWith(
          ConnectDeviceEvent value, $Res Function(ConnectDeviceEvent) then) =
      _$ConnectDeviceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectDeviceEventCopyWith<$Res> {
  _$ConnectDeviceEventCopyWithImpl(this._value, this._then);

  final ConnectDeviceEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectDeviceEvent) _then;
}

/// @nodoc
abstract class $ConnectPressedEventCopyWith<$Res> {
  factory $ConnectPressedEventCopyWith(
          ConnectPressedEvent value, $Res Function(ConnectPressedEvent) then) =
      _$ConnectPressedEventCopyWithImpl<$Res>;
  $Res call({BLEDevice2 device});
}

/// @nodoc
class _$ConnectPressedEventCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectPressedEventCopyWith<$Res> {
  _$ConnectPressedEventCopyWithImpl(
      ConnectPressedEvent _value, $Res Function(ConnectPressedEvent) _then)
      : super(_value, (v) => _then(v as ConnectPressedEvent));

  @override
  ConnectPressedEvent get _value => super._value as ConnectPressedEvent;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(ConnectPressedEvent(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BLEDevice2,
    ));
  }
}

/// @nodoc

class _$ConnectPressedEvent
    with DiagnosticableTreeMixin
    implements ConnectPressedEvent {
  const _$ConnectPressedEvent(this.device);

  @override
  final BLEDevice2 device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceEvent.connect(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceEvent.connect'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectPressedEvent &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $ConnectPressedEventCopyWith<ConnectPressedEvent> get copyWith =>
      _$ConnectPressedEventCopyWithImpl<ConnectPressedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BLEDevice2 device) connect,
    required TResult Function() connectComplete,
    required TResult Function() initialise,
    required TResult Function(BLEDeviceState deviceState) stateChange,
  }) {
    return connect(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BLEDevice2 device)? connect,
    TResult Function()? connectComplete,
    TResult Function()? initialise,
    TResult Function(BLEDeviceState deviceState)? stateChange,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectPressedEvent value) connect,
    required TResult Function(ConnectCompletedEvent value) connectComplete,
    required TResult Function(IntialiseRequestedEvent value) initialise,
    required TResult Function(ConnectStateChangedEvent value) stateChange,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectPressedEvent value)? connect,
    TResult Function(ConnectCompletedEvent value)? connectComplete,
    TResult Function(IntialiseRequestedEvent value)? initialise,
    TResult Function(ConnectStateChangedEvent value)? stateChange,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class ConnectPressedEvent implements ConnectDeviceEvent {
  const factory ConnectPressedEvent(BLEDevice2 device) = _$ConnectPressedEvent;

  BLEDevice2 get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectPressedEventCopyWith<ConnectPressedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectCompletedEventCopyWith<$Res> {
  factory $ConnectCompletedEventCopyWith(ConnectCompletedEvent value,
          $Res Function(ConnectCompletedEvent) then) =
      _$ConnectCompletedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectCompletedEventCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectCompletedEventCopyWith<$Res> {
  _$ConnectCompletedEventCopyWithImpl(
      ConnectCompletedEvent _value, $Res Function(ConnectCompletedEvent) _then)
      : super(_value, (v) => _then(v as ConnectCompletedEvent));

  @override
  ConnectCompletedEvent get _value => super._value as ConnectCompletedEvent;
}

/// @nodoc

class _$ConnectCompletedEvent
    with DiagnosticableTreeMixin
    implements ConnectCompletedEvent {
  const _$ConnectCompletedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceEvent.connectComplete()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceEvent.connectComplete'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectCompletedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BLEDevice2 device) connect,
    required TResult Function() connectComplete,
    required TResult Function() initialise,
    required TResult Function(BLEDeviceState deviceState) stateChange,
  }) {
    return connectComplete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BLEDevice2 device)? connect,
    TResult Function()? connectComplete,
    TResult Function()? initialise,
    TResult Function(BLEDeviceState deviceState)? stateChange,
    required TResult orElse(),
  }) {
    if (connectComplete != null) {
      return connectComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectPressedEvent value) connect,
    required TResult Function(ConnectCompletedEvent value) connectComplete,
    required TResult Function(IntialiseRequestedEvent value) initialise,
    required TResult Function(ConnectStateChangedEvent value) stateChange,
  }) {
    return connectComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectPressedEvent value)? connect,
    TResult Function(ConnectCompletedEvent value)? connectComplete,
    TResult Function(IntialiseRequestedEvent value)? initialise,
    TResult Function(ConnectStateChangedEvent value)? stateChange,
    required TResult orElse(),
  }) {
    if (connectComplete != null) {
      return connectComplete(this);
    }
    return orElse();
  }
}

abstract class ConnectCompletedEvent implements ConnectDeviceEvent {
  const factory ConnectCompletedEvent() = _$ConnectCompletedEvent;
}

/// @nodoc
abstract class $IntialiseRequestedEventCopyWith<$Res> {
  factory $IntialiseRequestedEventCopyWith(IntialiseRequestedEvent value,
          $Res Function(IntialiseRequestedEvent) then) =
      _$IntialiseRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IntialiseRequestedEventCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $IntialiseRequestedEventCopyWith<$Res> {
  _$IntialiseRequestedEventCopyWithImpl(IntialiseRequestedEvent _value,
      $Res Function(IntialiseRequestedEvent) _then)
      : super(_value, (v) => _then(v as IntialiseRequestedEvent));

  @override
  IntialiseRequestedEvent get _value => super._value as IntialiseRequestedEvent;
}

/// @nodoc

class _$IntialiseRequestedEvent
    with DiagnosticableTreeMixin
    implements IntialiseRequestedEvent {
  const _$IntialiseRequestedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceEvent.initialise()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceEvent.initialise'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IntialiseRequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BLEDevice2 device) connect,
    required TResult Function() connectComplete,
    required TResult Function() initialise,
    required TResult Function(BLEDeviceState deviceState) stateChange,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BLEDevice2 device)? connect,
    TResult Function()? connectComplete,
    TResult Function()? initialise,
    TResult Function(BLEDeviceState deviceState)? stateChange,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectPressedEvent value) connect,
    required TResult Function(ConnectCompletedEvent value) connectComplete,
    required TResult Function(IntialiseRequestedEvent value) initialise,
    required TResult Function(ConnectStateChangedEvent value) stateChange,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectPressedEvent value)? connect,
    TResult Function(ConnectCompletedEvent value)? connectComplete,
    TResult Function(IntialiseRequestedEvent value)? initialise,
    TResult Function(ConnectStateChangedEvent value)? stateChange,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class IntialiseRequestedEvent implements ConnectDeviceEvent {
  const factory IntialiseRequestedEvent() = _$IntialiseRequestedEvent;
}

/// @nodoc
abstract class $ConnectStateChangedEventCopyWith<$Res> {
  factory $ConnectStateChangedEventCopyWith(ConnectStateChangedEvent value,
          $Res Function(ConnectStateChangedEvent) then) =
      _$ConnectStateChangedEventCopyWithImpl<$Res>;
  $Res call({BLEDeviceState deviceState});
}

/// @nodoc
class _$ConnectStateChangedEventCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectStateChangedEventCopyWith<$Res> {
  _$ConnectStateChangedEventCopyWithImpl(ConnectStateChangedEvent _value,
      $Res Function(ConnectStateChangedEvent) _then)
      : super(_value, (v) => _then(v as ConnectStateChangedEvent));

  @override
  ConnectStateChangedEvent get _value =>
      super._value as ConnectStateChangedEvent;

  @override
  $Res call({
    Object? deviceState = freezed,
  }) {
    return _then(ConnectStateChangedEvent(
      deviceState == freezed
          ? _value.deviceState
          : deviceState // ignore: cast_nullable_to_non_nullable
              as BLEDeviceState,
    ));
  }
}

/// @nodoc

class _$ConnectStateChangedEvent
    with DiagnosticableTreeMixin
    implements ConnectStateChangedEvent {
  const _$ConnectStateChangedEvent(this.deviceState);

  @override
  final BLEDeviceState deviceState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceEvent.stateChange(deviceState: $deviceState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceEvent.stateChange'))
      ..add(DiagnosticsProperty('deviceState', deviceState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectStateChangedEvent &&
            (identical(other.deviceState, deviceState) ||
                const DeepCollectionEquality()
                    .equals(other.deviceState, deviceState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceState);

  @JsonKey(ignore: true)
  @override
  $ConnectStateChangedEventCopyWith<ConnectStateChangedEvent> get copyWith =>
      _$ConnectStateChangedEventCopyWithImpl<ConnectStateChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BLEDevice2 device) connect,
    required TResult Function() connectComplete,
    required TResult Function() initialise,
    required TResult Function(BLEDeviceState deviceState) stateChange,
  }) {
    return stateChange(deviceState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BLEDevice2 device)? connect,
    TResult Function()? connectComplete,
    TResult Function()? initialise,
    TResult Function(BLEDeviceState deviceState)? stateChange,
    required TResult orElse(),
  }) {
    if (stateChange != null) {
      return stateChange(deviceState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectPressedEvent value) connect,
    required TResult Function(ConnectCompletedEvent value) connectComplete,
    required TResult Function(IntialiseRequestedEvent value) initialise,
    required TResult Function(ConnectStateChangedEvent value) stateChange,
  }) {
    return stateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectPressedEvent value)? connect,
    TResult Function(ConnectCompletedEvent value)? connectComplete,
    TResult Function(IntialiseRequestedEvent value)? initialise,
    TResult Function(ConnectStateChangedEvent value)? stateChange,
    required TResult orElse(),
  }) {
    if (stateChange != null) {
      return stateChange(this);
    }
    return orElse();
  }
}

abstract class ConnectStateChangedEvent implements ConnectDeviceEvent {
  const factory ConnectStateChangedEvent(BLEDeviceState deviceState) =
      _$ConnectStateChangedEvent;

  BLEDeviceState get deviceState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectStateChangedEventCopyWith<ConnectStateChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConnectDeviceStateTearOff {
  const _$ConnectDeviceStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ConnectedState connected(BLEDevice2 device) {
    return ConnectedState(
      device,
    );
  }

  ConnectingState requested() {
    return const ConnectingState();
  }

  NoDeviceState nodevice(ConnectFailure connectFailure) {
    return NoDeviceState(
      connectFailure,
    );
  }

  DeviceKnownState deviceKnown(dynamic deviceList) {
    return DeviceKnownState(
      deviceList,
    );
  }

  DeviceOfflineState deviceOffline() {
    return const DeviceOfflineState();
  }
}

/// @nodoc
const $ConnectDeviceState = _$ConnectDeviceStateTearOff();

/// @nodoc
mixin _$ConnectDeviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectDeviceStateCopyWith<$Res> {
  factory $ConnectDeviceStateCopyWith(
          ConnectDeviceState value, $Res Function(ConnectDeviceState) then) =
      _$ConnectDeviceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $ConnectDeviceStateCopyWith<$Res> {
  _$ConnectDeviceStateCopyWithImpl(this._value, this._then);

  final ConnectDeviceState _value;
  // ignore: unused_field
  final $Res Function(ConnectDeviceState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ConnectDeviceState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConnectDeviceState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ConnectedStateCopyWith<$Res> {
  factory $ConnectedStateCopyWith(
          ConnectedState value, $Res Function(ConnectedState) then) =
      _$ConnectedStateCopyWithImpl<$Res>;
  $Res call({BLEDevice2 device});
}

/// @nodoc
class _$ConnectedStateCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $ConnectedStateCopyWith<$Res> {
  _$ConnectedStateCopyWithImpl(
      ConnectedState _value, $Res Function(ConnectedState) _then)
      : super(_value, (v) => _then(v as ConnectedState));

  @override
  ConnectedState get _value => super._value as ConnectedState;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(ConnectedState(
      device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BLEDevice2,
    ));
  }
}

/// @nodoc

class _$ConnectedState with DiagnosticableTreeMixin implements ConnectedState {
  const _$ConnectedState(this.device);

  @override
  final BLEDevice2 device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceState.connected(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceState.connected'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConnectedState &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  $ConnectedStateCopyWith<ConnectedState> get copyWith =>
      _$ConnectedStateCopyWithImpl<ConnectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) {
    return connected(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectedState implements ConnectDeviceState {
  const factory ConnectedState(BLEDevice2 device) = _$ConnectedState;

  BLEDevice2 get device => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectedStateCopyWith<ConnectedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectingStateCopyWith<$Res> {
  factory $ConnectingStateCopyWith(
          ConnectingState value, $Res Function(ConnectingState) then) =
      _$ConnectingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectingStateCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $ConnectingStateCopyWith<$Res> {
  _$ConnectingStateCopyWithImpl(
      ConnectingState _value, $Res Function(ConnectingState) _then)
      : super(_value, (v) => _then(v as ConnectingState));

  @override
  ConnectingState get _value => super._value as ConnectingState;
}

/// @nodoc

class _$ConnectingState
    with DiagnosticableTreeMixin
    implements ConnectingState {
  const _$ConnectingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceState.requested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceState.requested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class ConnectingState implements ConnectDeviceState {
  const factory ConnectingState() = _$ConnectingState;
}

/// @nodoc
abstract class $NoDeviceStateCopyWith<$Res> {
  factory $NoDeviceStateCopyWith(
          NoDeviceState value, $Res Function(NoDeviceState) then) =
      _$NoDeviceStateCopyWithImpl<$Res>;
  $Res call({ConnectFailure connectFailure});

  $ConnectFailureCopyWith<$Res> get connectFailure;
}

/// @nodoc
class _$NoDeviceStateCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $NoDeviceStateCopyWith<$Res> {
  _$NoDeviceStateCopyWithImpl(
      NoDeviceState _value, $Res Function(NoDeviceState) _then)
      : super(_value, (v) => _then(v as NoDeviceState));

  @override
  NoDeviceState get _value => super._value as NoDeviceState;

  @override
  $Res call({
    Object? connectFailure = freezed,
  }) {
    return _then(NoDeviceState(
      connectFailure == freezed
          ? _value.connectFailure
          : connectFailure // ignore: cast_nullable_to_non_nullable
              as ConnectFailure,
    ));
  }

  @override
  $ConnectFailureCopyWith<$Res> get connectFailure {
    return $ConnectFailureCopyWith<$Res>(_value.connectFailure, (value) {
      return _then(_value.copyWith(connectFailure: value));
    });
  }
}

/// @nodoc

class _$NoDeviceState with DiagnosticableTreeMixin implements NoDeviceState {
  const _$NoDeviceState(this.connectFailure);

  @override
  final ConnectFailure connectFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceState.nodevice(connectFailure: $connectFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceState.nodevice'))
      ..add(DiagnosticsProperty('connectFailure', connectFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoDeviceState &&
            (identical(other.connectFailure, connectFailure) ||
                const DeepCollectionEquality()
                    .equals(other.connectFailure, connectFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectFailure);

  @JsonKey(ignore: true)
  @override
  $NoDeviceStateCopyWith<NoDeviceState> get copyWith =>
      _$NoDeviceStateCopyWithImpl<NoDeviceState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) {
    return nodevice(connectFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) {
    if (nodevice != null) {
      return nodevice(connectFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) {
    return nodevice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) {
    if (nodevice != null) {
      return nodevice(this);
    }
    return orElse();
  }
}

abstract class NoDeviceState implements ConnectDeviceState {
  const factory NoDeviceState(ConnectFailure connectFailure) = _$NoDeviceState;

  ConnectFailure get connectFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoDeviceStateCopyWith<NoDeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceKnownStateCopyWith<$Res> {
  factory $DeviceKnownStateCopyWith(
          DeviceKnownState value, $Res Function(DeviceKnownState) then) =
      _$DeviceKnownStateCopyWithImpl<$Res>;
  $Res call({dynamic deviceList});
}

/// @nodoc
class _$DeviceKnownStateCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $DeviceKnownStateCopyWith<$Res> {
  _$DeviceKnownStateCopyWithImpl(
      DeviceKnownState _value, $Res Function(DeviceKnownState) _then)
      : super(_value, (v) => _then(v as DeviceKnownState));

  @override
  DeviceKnownState get _value => super._value as DeviceKnownState;

  @override
  $Res call({
    Object? deviceList = freezed,
  }) {
    return _then(DeviceKnownState(
      deviceList == freezed ? _value.deviceList : deviceList,
    ));
  }
}

/// @nodoc

class _$DeviceKnownState
    with DiagnosticableTreeMixin
    implements DeviceKnownState {
  const _$DeviceKnownState(this.deviceList);

  @override
  final dynamic deviceList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceState.deviceKnown(deviceList: $deviceList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceState.deviceKnown'))
      ..add(DiagnosticsProperty('deviceList', deviceList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeviceKnownState &&
            (identical(other.deviceList, deviceList) ||
                const DeepCollectionEquality()
                    .equals(other.deviceList, deviceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deviceList);

  @JsonKey(ignore: true)
  @override
  $DeviceKnownStateCopyWith<DeviceKnownState> get copyWith =>
      _$DeviceKnownStateCopyWithImpl<DeviceKnownState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) {
    return deviceKnown(deviceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) {
    if (deviceKnown != null) {
      return deviceKnown(deviceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) {
    return deviceKnown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) {
    if (deviceKnown != null) {
      return deviceKnown(this);
    }
    return orElse();
  }
}

abstract class DeviceKnownState implements ConnectDeviceState {
  const factory DeviceKnownState(dynamic deviceList) = _$DeviceKnownState;

  dynamic get deviceList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceKnownStateCopyWith<DeviceKnownState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceOfflineStateCopyWith<$Res> {
  factory $DeviceOfflineStateCopyWith(
          DeviceOfflineState value, $Res Function(DeviceOfflineState) then) =
      _$DeviceOfflineStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceOfflineStateCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $DeviceOfflineStateCopyWith<$Res> {
  _$DeviceOfflineStateCopyWithImpl(
      DeviceOfflineState _value, $Res Function(DeviceOfflineState) _then)
      : super(_value, (v) => _then(v as DeviceOfflineState));

  @override
  DeviceOfflineState get _value => super._value as DeviceOfflineState;
}

/// @nodoc

class _$DeviceOfflineState
    with DiagnosticableTreeMixin
    implements DeviceOfflineState {
  const _$DeviceOfflineState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectDeviceState.deviceOffline()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectDeviceState.deviceOffline'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeviceOfflineState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(BLEDevice2 device) connected,
    required TResult Function() requested,
    required TResult Function(ConnectFailure connectFailure) nodevice,
    required TResult Function(dynamic deviceList) deviceKnown,
    required TResult Function() deviceOffline,
  }) {
    return deviceOffline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(BLEDevice2 device)? connected,
    TResult Function()? requested,
    TResult Function(ConnectFailure connectFailure)? nodevice,
    TResult Function(dynamic deviceList)? deviceKnown,
    TResult Function()? deviceOffline,
    required TResult orElse(),
  }) {
    if (deviceOffline != null) {
      return deviceOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConnectedState value) connected,
    required TResult Function(ConnectingState value) requested,
    required TResult Function(NoDeviceState value) nodevice,
    required TResult Function(DeviceKnownState value) deviceKnown,
    required TResult Function(DeviceOfflineState value) deviceOffline,
  }) {
    return deviceOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConnectedState value)? connected,
    TResult Function(ConnectingState value)? requested,
    TResult Function(NoDeviceState value)? nodevice,
    TResult Function(DeviceKnownState value)? deviceKnown,
    TResult Function(DeviceOfflineState value)? deviceOffline,
    required TResult orElse(),
  }) {
    if (deviceOffline != null) {
      return deviceOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceOfflineState implements ConnectDeviceState {
  const factory DeviceOfflineState() = _$DeviceOfflineState;
}
