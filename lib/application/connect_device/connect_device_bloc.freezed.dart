// @dart=2.9
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'connect_device_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ConnectDeviceEventTearOff {
  const _$ConnectDeviceEventTearOff();

// ignore: unused_element
  ConnectPressedEvent connect(BLEDevice2 device) {
    return ConnectPressedEvent(
      device,
    );
  }

// ignore: unused_element
  ConnectCompletedEvent connectComplete() {
    return const ConnectCompletedEvent();
  }

// ignore: unused_element
  IntialiseRequestedEvent initialise() {
    return const IntialiseRequestedEvent();
  }

// ignore: unused_element
  ConnectStateChangedEvent stateChange(BLEDeviceState deviceState) {
    return ConnectStateChangedEvent(
      deviceState,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ConnectDeviceEvent = _$ConnectDeviceEventTearOff();

/// @nodoc
mixin _$ConnectDeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(BLEDevice2 device),
    @required TResult connectComplete(),
    @required TResult initialise(),
    @required TResult stateChange(BLEDeviceState deviceState),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(BLEDevice2 device),
    TResult connectComplete(),
    TResult initialise(),
    TResult stateChange(BLEDeviceState deviceState),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(ConnectPressedEvent value),
    @required TResult connectComplete(ConnectCompletedEvent value),
    @required TResult initialise(IntialiseRequestedEvent value),
    @required TResult stateChange(ConnectStateChangedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(ConnectPressedEvent value),
    TResult connectComplete(ConnectCompletedEvent value),
    TResult initialise(IntialiseRequestedEvent value),
    TResult stateChange(ConnectStateChangedEvent value),
    @required TResult orElse(),
  });
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
abstract class $ConnectPressedCopyWith<$Res> {
  factory $ConnectPressedCopyWith(
          ConnectPressedEvent value, $Res Function(ConnectPressedEvent) then) =
      _$ConnectPressedCopyWithImpl<$Res>;
  $Res call({BLEDevice2 device});
}

/// @nodoc
class _$ConnectPressedCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectPressedCopyWith<$Res> {
  _$ConnectPressedCopyWithImpl(
      ConnectPressedEvent _value, $Res Function(ConnectPressedEvent) _then)
      : super(_value, (v) => _then(v as ConnectPressedEvent));

  @override
  ConnectPressedEvent get _value => super._value as ConnectPressedEvent;

  @override
  $Res call({
    Object device = freezed,
  }) {
    return _then(ConnectPressedEvent(
      device == freezed ? _value.device : device as BLEDevice2,
    ));
  }
}

/// @nodoc
class _$ConnectPressed
    with DiagnosticableTreeMixin
    implements ConnectPressedEvent {
  const _$ConnectPressed(this.device) : assert(device != null);

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
  $ConnectPressedCopyWith<ConnectPressedEvent> get copyWith =>
      _$ConnectPressedCopyWithImpl<ConnectPressedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(BLEDevice2 device),
    @required TResult connectComplete(),
    @required TResult initialise(),
    @required TResult stateChange(BLEDeviceState deviceState),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return connect(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(BLEDevice2 device),
    TResult connectComplete(),
    TResult initialise(),
    TResult stateChange(BLEDeviceState deviceState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connect != null) {
      return connect(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(ConnectPressedEvent value),
    @required TResult connectComplete(ConnectCompletedEvent value),
    @required TResult initialise(IntialiseRequestedEvent value),
    @required TResult stateChange(ConnectStateChangedEvent value),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(ConnectPressedEvent value),
    TResult connectComplete(ConnectCompletedEvent value),
    TResult initialise(IntialiseRequestedEvent value),
    TResult stateChange(ConnectStateChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class ConnectPressedEvent implements ConnectDeviceEvent {
  const factory ConnectPressedEvent(BLEDevice2 device) = _$ConnectPressed;

  BLEDevice2 get device;
  @JsonKey(ignore: true)
  $ConnectPressedCopyWith<ConnectPressedEvent> get copyWith;
}

/// @nodoc
abstract class $ConnectCompletedCopyWith<$Res> {
  factory $ConnectCompletedCopyWith(ConnectCompletedEvent value,
          $Res Function(ConnectCompletedEvent) then) =
      _$ConnectCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectCompletedCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectCompletedCopyWith<$Res> {
  _$ConnectCompletedCopyWithImpl(
      ConnectCompletedEvent _value, $Res Function(ConnectCompletedEvent) _then)
      : super(_value, (v) => _then(v as ConnectCompletedEvent));

  @override
  ConnectCompletedEvent get _value => super._value as ConnectCompletedEvent;
}

/// @nodoc
class _$ConnectCompleted
    with DiagnosticableTreeMixin
    implements ConnectCompletedEvent {
  const _$ConnectCompleted();

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
  TResult when<TResult extends Object>({
    @required TResult connect(BLEDevice2 device),
    @required TResult connectComplete(),
    @required TResult initialise(),
    @required TResult stateChange(BLEDeviceState deviceState),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return connectComplete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(BLEDevice2 device),
    TResult connectComplete(),
    TResult initialise(),
    TResult stateChange(BLEDeviceState deviceState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectComplete != null) {
      return connectComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(ConnectPressedEvent value),
    @required TResult connectComplete(ConnectCompletedEvent value),
    @required TResult initialise(IntialiseRequestedEvent value),
    @required TResult stateChange(ConnectStateChangedEvent value),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return connectComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(ConnectPressedEvent value),
    TResult connectComplete(ConnectCompletedEvent value),
    TResult initialise(IntialiseRequestedEvent value),
    TResult stateChange(ConnectStateChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectComplete != null) {
      return connectComplete(this);
    }
    return orElse();
  }
}

abstract class ConnectCompletedEvent implements ConnectDeviceEvent {
  const factory ConnectCompletedEvent() = _$ConnectCompleted;
}

/// @nodoc
abstract class $IntialiseRequestedCopyWith<$Res> {
  factory $IntialiseRequestedCopyWith(IntialiseRequestedEvent value,
          $Res Function(IntialiseRequestedEvent) then) =
      _$IntialiseRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IntialiseRequestedCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $IntialiseRequestedCopyWith<$Res> {
  _$IntialiseRequestedCopyWithImpl(IntialiseRequestedEvent _value,
      $Res Function(IntialiseRequestedEvent) _then)
      : super(_value, (v) => _then(v as IntialiseRequestedEvent));

  @override
  IntialiseRequestedEvent get _value => super._value as IntialiseRequestedEvent;
}

/// @nodoc
class _$IntialiseRequested
    with DiagnosticableTreeMixin
    implements IntialiseRequestedEvent {
  const _$IntialiseRequested();

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
  TResult when<TResult extends Object>({
    @required TResult connect(BLEDevice2 device),
    @required TResult connectComplete(),
    @required TResult initialise(),
    @required TResult stateChange(BLEDeviceState deviceState),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(BLEDevice2 device),
    TResult connectComplete(),
    TResult initialise(),
    TResult stateChange(BLEDeviceState deviceState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialise != null) {
      return initialise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(ConnectPressedEvent value),
    @required TResult connectComplete(ConnectCompletedEvent value),
    @required TResult initialise(IntialiseRequestedEvent value),
    @required TResult stateChange(ConnectStateChangedEvent value),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(ConnectPressedEvent value),
    TResult connectComplete(ConnectCompletedEvent value),
    TResult initialise(IntialiseRequestedEvent value),
    TResult stateChange(ConnectStateChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class IntialiseRequestedEvent implements ConnectDeviceEvent {
  const factory IntialiseRequestedEvent() = _$IntialiseRequested;
}

/// @nodoc
abstract class $ConnectStateChangedCopyWith<$Res> {
  factory $ConnectStateChangedCopyWith(ConnectStateChangedEvent value,
          $Res Function(ConnectStateChangedEvent) then) =
      _$ConnectStateChangedCopyWithImpl<$Res>;
  $Res call({BLEDeviceState deviceState});
}

/// @nodoc
class _$ConnectStateChangedCopyWithImpl<$Res>
    extends _$ConnectDeviceEventCopyWithImpl<$Res>
    implements $ConnectStateChangedCopyWith<$Res> {
  _$ConnectStateChangedCopyWithImpl(ConnectStateChangedEvent _value,
      $Res Function(ConnectStateChangedEvent) _then)
      : super(_value, (v) => _then(v as ConnectStateChangedEvent));

  @override
  ConnectStateChangedEvent get _value =>
      super._value as ConnectStateChangedEvent;

  @override
  $Res call({
    Object deviceState = freezed,
  }) {
    return _then(ConnectStateChangedEvent(
      deviceState == freezed
          ? _value.deviceState
          : deviceState as BLEDeviceState,
    ));
  }
}

/// @nodoc
class _$ConnectStateChanged
    with DiagnosticableTreeMixin
    implements ConnectStateChangedEvent {
  const _$ConnectStateChanged(this.deviceState) : assert(deviceState != null);

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
  $ConnectStateChangedCopyWith<ConnectStateChangedEvent> get copyWith =>
      _$ConnectStateChangedCopyWithImpl<ConnectStateChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connect(BLEDevice2 device),
    @required TResult connectComplete(),
    @required TResult initialise(),
    @required TResult stateChange(BLEDeviceState deviceState),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return stateChange(deviceState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connect(BLEDevice2 device),
    TResult connectComplete(),
    TResult initialise(),
    TResult stateChange(BLEDeviceState deviceState),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stateChange != null) {
      return stateChange(deviceState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connect(ConnectPressedEvent value),
    @required TResult connectComplete(ConnectCompletedEvent value),
    @required TResult initialise(IntialiseRequestedEvent value),
    @required TResult stateChange(ConnectStateChangedEvent value),
  }) {
    assert(connect != null);
    assert(connectComplete != null);
    assert(initialise != null);
    assert(stateChange != null);
    return stateChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connect(ConnectPressedEvent value),
    TResult connectComplete(ConnectCompletedEvent value),
    TResult initialise(IntialiseRequestedEvent value),
    TResult stateChange(ConnectStateChangedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stateChange != null) {
      return stateChange(this);
    }
    return orElse();
  }
}

abstract class ConnectStateChangedEvent implements ConnectDeviceEvent {
  const factory ConnectStateChangedEvent(BLEDeviceState deviceState) =
      _$ConnectStateChanged;

  BLEDeviceState get deviceState;
  @JsonKey(ignore: true)
  $ConnectStateChangedCopyWith<ConnectStateChangedEvent> get copyWith;
}

/// @nodoc
class _$ConnectDeviceStateTearOff {
  const _$ConnectDeviceStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ConnectedState connected(BLEDevice2 device) {
    return ConnectedState(
      device,
    );
  }

// ignore: unused_element
  ConnectingState requested() {
    return const ConnectingState();
  }

// ignore: unused_element
  NoDeviceState nodevice(ConnectFailure connectFailure) {
    return NoDeviceState(
      connectFailure,
    );
  }

// ignore: unused_element
  DeviceKnownState deviceKnown(dynamic deviceList) {
    return DeviceKnownState(
      deviceList,
    );
  }

// ignore: unused_element
  DeviceOfflineState deviceOffline() {
    return const DeviceOfflineState();
  }
}

/// @nodoc
// ignore: unused_element
const $ConnectDeviceState = _$ConnectDeviceStateTearOff();

/// @nodoc
mixin _$ConnectDeviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
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
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
abstract class $ConnectedCopyWith<$Res> {
  factory $ConnectedCopyWith(
          ConnectedState value, $Res Function(ConnectedState) then) =
      _$ConnectedCopyWithImpl<$Res>;
  $Res call({BLEDevice2 device});
}

/// @nodoc
class _$ConnectedCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $ConnectedCopyWith<$Res> {
  _$ConnectedCopyWithImpl(
      ConnectedState _value, $Res Function(ConnectedState) _then)
      : super(_value, (v) => _then(v as ConnectedState));

  @override
  ConnectedState get _value => super._value as ConnectedState;

  @override
  $Res call({
    Object device = freezed,
  }) {
    return _then(ConnectedState(
      device == freezed ? _value.device : device as BLEDevice2,
    ));
  }
}

/// @nodoc
class _$Connected with DiagnosticableTreeMixin implements ConnectedState {
  const _$Connected(this.device) : assert(device != null);

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
  $ConnectedCopyWith<ConnectedState> get copyWith =>
      _$ConnectedCopyWithImpl<ConnectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return connected(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connected != null) {
      return connected(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectedState implements ConnectDeviceState {
  const factory ConnectedState(BLEDevice2 device) = _$Connected;

  BLEDevice2 get device;
  @JsonKey(ignore: true)
  $ConnectedCopyWith<ConnectedState> get copyWith;
}

/// @nodoc
abstract class $ConnectingCopyWith<$Res> {
  factory $ConnectingCopyWith(
          ConnectingState value, $Res Function(ConnectingState) then) =
      _$ConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectingCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $ConnectingCopyWith<$Res> {
  _$ConnectingCopyWithImpl(
      ConnectingState _value, $Res Function(ConnectingState) _then)
      : super(_value, (v) => _then(v as ConnectingState));

  @override
  ConnectingState get _value => super._value as ConnectingState;
}

/// @nodoc
class _$Connecting with DiagnosticableTreeMixin implements ConnectingState {
  const _$Connecting();

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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
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
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class ConnectingState implements ConnectDeviceState {
  const factory ConnectingState() = _$Connecting;
}

/// @nodoc
abstract class $NoDeviceCopyWith<$Res> {
  factory $NoDeviceCopyWith(
          NoDeviceState value, $Res Function(NoDeviceState) then) =
      _$NoDeviceCopyWithImpl<$Res>;
  $Res call({ConnectFailure connectFailure});

  $ConnectFailureCopyWith<$Res> get connectFailure;
}

/// @nodoc
class _$NoDeviceCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $NoDeviceCopyWith<$Res> {
  _$NoDeviceCopyWithImpl(
      NoDeviceState _value, $Res Function(NoDeviceState) _then)
      : super(_value, (v) => _then(v as NoDeviceState));

  @override
  NoDeviceState get _value => super._value as NoDeviceState;

  @override
  $Res call({
    Object connectFailure = freezed,
  }) {
    return _then(NoDeviceState(
      connectFailure == freezed
          ? _value.connectFailure
          : connectFailure as ConnectFailure,
    ));
  }

  @override
  $ConnectFailureCopyWith<$Res> get connectFailure {
    if (_value.connectFailure == null) {
      return null;
    }
    return $ConnectFailureCopyWith<$Res>(_value.connectFailure, (value) {
      return _then(_value.copyWith(connectFailure: value));
    });
  }
}

/// @nodoc
class _$NoDevice with DiagnosticableTreeMixin implements NoDeviceState {
  const _$NoDevice(this.connectFailure) : assert(connectFailure != null);

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
  $NoDeviceCopyWith<NoDeviceState> get copyWith =>
      _$NoDeviceCopyWithImpl<NoDeviceState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return nodevice(connectFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nodevice != null) {
      return nodevice(connectFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return nodevice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nodevice != null) {
      return nodevice(this);
    }
    return orElse();
  }
}

abstract class NoDeviceState implements ConnectDeviceState {
  const factory NoDeviceState(ConnectFailure connectFailure) = _$NoDevice;

  ConnectFailure get connectFailure;
  @JsonKey(ignore: true)
  $NoDeviceCopyWith<NoDeviceState> get copyWith;
}

/// @nodoc
abstract class $DeviceKnownCopyWith<$Res> {
  factory $DeviceKnownCopyWith(
          DeviceKnownState value, $Res Function(DeviceKnownState) then) =
      _$DeviceKnownCopyWithImpl<$Res>;
  $Res call({dynamic deviceList});
}

/// @nodoc
class _$DeviceKnownCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $DeviceKnownCopyWith<$Res> {
  _$DeviceKnownCopyWithImpl(
      DeviceKnownState _value, $Res Function(DeviceKnownState) _then)
      : super(_value, (v) => _then(v as DeviceKnownState));

  @override
  DeviceKnownState get _value => super._value as DeviceKnownState;

  @override
  $Res call({
    Object deviceList = freezed,
  }) {
    return _then(DeviceKnownState(
      deviceList == freezed ? _value.deviceList : deviceList,
    ));
  }
}

/// @nodoc
class _$DeviceKnown with DiagnosticableTreeMixin implements DeviceKnownState {
  const _$DeviceKnown(this.deviceList) : assert(deviceList != null);

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
  $DeviceKnownCopyWith<DeviceKnownState> get copyWith =>
      _$DeviceKnownCopyWithImpl<DeviceKnownState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return deviceKnown(deviceList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceKnown != null) {
      return deviceKnown(deviceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return deviceKnown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceKnown != null) {
      return deviceKnown(this);
    }
    return orElse();
  }
}

abstract class DeviceKnownState implements ConnectDeviceState {
  const factory DeviceKnownState(dynamic deviceList) = _$DeviceKnown;

  dynamic get deviceList;
  @JsonKey(ignore: true)
  $DeviceKnownCopyWith<DeviceKnownState> get copyWith;
}

/// @nodoc
abstract class $DeviceOfflineCopyWith<$Res> {
  factory $DeviceOfflineCopyWith(
          DeviceOfflineState value, $Res Function(DeviceOfflineState) then) =
      _$DeviceOfflineCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceOfflineCopyWithImpl<$Res>
    extends _$ConnectDeviceStateCopyWithImpl<$Res>
    implements $DeviceOfflineCopyWith<$Res> {
  _$DeviceOfflineCopyWithImpl(
      DeviceOfflineState _value, $Res Function(DeviceOfflineState) _then)
      : super(_value, (v) => _then(v as DeviceOfflineState));

  @override
  DeviceOfflineState get _value => super._value as DeviceOfflineState;
}

/// @nodoc
class _$DeviceOffline
    with DiagnosticableTreeMixin
    implements DeviceOfflineState {
  const _$DeviceOffline();

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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult connected(BLEDevice2 device),
    @required TResult requested(),
    @required TResult nodevice(ConnectFailure connectFailure),
    @required TResult deviceKnown(dynamic deviceList),
    @required TResult deviceOffline(),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return deviceOffline();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult connected(BLEDevice2 device),
    TResult requested(),
    TResult nodevice(ConnectFailure connectFailure),
    TResult deviceKnown(dynamic deviceList),
    TResult deviceOffline(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult connected(ConnectedState value),
    @required TResult requested(ConnectingState value),
    @required TResult nodevice(NoDeviceState value),
    @required TResult deviceKnown(DeviceKnownState value),
    @required TResult deviceOffline(DeviceOfflineState value),
  }) {
    assert(initial != null);
    assert(connected != null);
    assert(requested != null);
    assert(nodevice != null);
    assert(deviceKnown != null);
    assert(deviceOffline != null);
    return deviceOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult connected(ConnectedState value),
    TResult requested(ConnectingState value),
    TResult nodevice(NoDeviceState value),
    TResult deviceKnown(DeviceKnownState value),
    TResult deviceOffline(DeviceOfflineState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deviceOffline != null) {
      return deviceOffline(this);
    }
    return orElse();
  }
}

abstract class DeviceOfflineState implements ConnectDeviceState {
  const factory DeviceOfflineState() = _$DeviceOffline;
}
