// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_device_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FindDeviceEventTearOff {
  const _$FindDeviceEventTearOff();

  FindStartedEvent started() {
    return const FindStartedEvent();
  }

  FindScanRequestedEvent scan() {
    return const FindScanRequestedEvent();
  }

  FindScanStopRequestedEvent scanStop() {
    return const FindScanStopRequestedEvent();
  }

  FindScanCompletedEvent scanComplete() {
    return const FindScanCompletedEvent();
  }

  FindRefreshRequestedEvent refresh() {
    return const FindRefreshRequestedEvent();
  }

  FindRefreshCompletedEvent refreshComplete() {
    return const FindRefreshCompletedEvent();
  }
}

/// @nodoc
const $FindDeviceEvent = _$FindDeviceEventTearOff();

/// @nodoc
mixin _$FindDeviceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindDeviceEventCopyWith<$Res> {
  factory $FindDeviceEventCopyWith(
          FindDeviceEvent value, $Res Function(FindDeviceEvent) then) =
      _$FindDeviceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindDeviceEventCopyWith<$Res> {
  _$FindDeviceEventCopyWithImpl(this._value, this._then);

  final FindDeviceEvent _value;
  // ignore: unused_field
  final $Res Function(FindDeviceEvent) _then;
}

/// @nodoc
abstract class $FindStartedEventCopyWith<$Res> {
  factory $FindStartedEventCopyWith(
          FindStartedEvent value, $Res Function(FindStartedEvent) then) =
      _$FindStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindStartedEventCopyWithImpl<$Res>
    extends _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindStartedEventCopyWith<$Res> {
  _$FindStartedEventCopyWithImpl(
      FindStartedEvent _value, $Res Function(FindStartedEvent) _then)
      : super(_value, (v) => _then(v as FindStartedEvent));

  @override
  FindStartedEvent get _value => super._value as FindStartedEvent;
}

/// @nodoc

class _$FindStartedEvent implements FindStartedEvent {
  const _$FindStartedEvent();

  @override
  String toString() {
    return 'FindDeviceEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class FindStartedEvent implements FindDeviceEvent {
  const factory FindStartedEvent() = _$FindStartedEvent;
}

/// @nodoc
abstract class $FindScanRequestedEventCopyWith<$Res> {
  factory $FindScanRequestedEventCopyWith(FindScanRequestedEvent value,
          $Res Function(FindScanRequestedEvent) then) =
      _$FindScanRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindScanRequestedEventCopyWithImpl<$Res>
    extends _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindScanRequestedEventCopyWith<$Res> {
  _$FindScanRequestedEventCopyWithImpl(FindScanRequestedEvent _value,
      $Res Function(FindScanRequestedEvent) _then)
      : super(_value, (v) => _then(v as FindScanRequestedEvent));

  @override
  FindScanRequestedEvent get _value => super._value as FindScanRequestedEvent;
}

/// @nodoc

class _$FindScanRequestedEvent implements FindScanRequestedEvent {
  const _$FindScanRequestedEvent();

  @override
  String toString() {
    return 'FindDeviceEvent.scan()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindScanRequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) {
    return scan();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) {
    return scan(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan(this);
    }
    return orElse();
  }
}

abstract class FindScanRequestedEvent implements FindDeviceEvent {
  const factory FindScanRequestedEvent() = _$FindScanRequestedEvent;
}

/// @nodoc
abstract class $FindScanStopRequestedEventCopyWith<$Res> {
  factory $FindScanStopRequestedEventCopyWith(FindScanStopRequestedEvent value,
          $Res Function(FindScanStopRequestedEvent) then) =
      _$FindScanStopRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindScanStopRequestedEventCopyWithImpl<$Res>
    extends _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindScanStopRequestedEventCopyWith<$Res> {
  _$FindScanStopRequestedEventCopyWithImpl(FindScanStopRequestedEvent _value,
      $Res Function(FindScanStopRequestedEvent) _then)
      : super(_value, (v) => _then(v as FindScanStopRequestedEvent));

  @override
  FindScanStopRequestedEvent get _value =>
      super._value as FindScanStopRequestedEvent;
}

/// @nodoc

class _$FindScanStopRequestedEvent implements FindScanStopRequestedEvent {
  const _$FindScanStopRequestedEvent();

  @override
  String toString() {
    return 'FindDeviceEvent.scanStop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindScanStopRequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) {
    return scanStop();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) {
    if (scanStop != null) {
      return scanStop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) {
    return scanStop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) {
    if (scanStop != null) {
      return scanStop(this);
    }
    return orElse();
  }
}

abstract class FindScanStopRequestedEvent implements FindDeviceEvent {
  const factory FindScanStopRequestedEvent() = _$FindScanStopRequestedEvent;
}

/// @nodoc
abstract class $FindScanCompletedEventCopyWith<$Res> {
  factory $FindScanCompletedEventCopyWith(FindScanCompletedEvent value,
          $Res Function(FindScanCompletedEvent) then) =
      _$FindScanCompletedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindScanCompletedEventCopyWithImpl<$Res>
    extends _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindScanCompletedEventCopyWith<$Res> {
  _$FindScanCompletedEventCopyWithImpl(FindScanCompletedEvent _value,
      $Res Function(FindScanCompletedEvent) _then)
      : super(_value, (v) => _then(v as FindScanCompletedEvent));

  @override
  FindScanCompletedEvent get _value => super._value as FindScanCompletedEvent;
}

/// @nodoc

class _$FindScanCompletedEvent implements FindScanCompletedEvent {
  const _$FindScanCompletedEvent();

  @override
  String toString() {
    return 'FindDeviceEvent.scanComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindScanCompletedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) {
    return scanComplete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) {
    if (scanComplete != null) {
      return scanComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) {
    return scanComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) {
    if (scanComplete != null) {
      return scanComplete(this);
    }
    return orElse();
  }
}

abstract class FindScanCompletedEvent implements FindDeviceEvent {
  const factory FindScanCompletedEvent() = _$FindScanCompletedEvent;
}

/// @nodoc
abstract class $FindRefreshRequestedEventCopyWith<$Res> {
  factory $FindRefreshRequestedEventCopyWith(FindRefreshRequestedEvent value,
          $Res Function(FindRefreshRequestedEvent) then) =
      _$FindRefreshRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindRefreshRequestedEventCopyWithImpl<$Res>
    extends _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindRefreshRequestedEventCopyWith<$Res> {
  _$FindRefreshRequestedEventCopyWithImpl(FindRefreshRequestedEvent _value,
      $Res Function(FindRefreshRequestedEvent) _then)
      : super(_value, (v) => _then(v as FindRefreshRequestedEvent));

  @override
  FindRefreshRequestedEvent get _value =>
      super._value as FindRefreshRequestedEvent;
}

/// @nodoc

class _$FindRefreshRequestedEvent implements FindRefreshRequestedEvent {
  const _$FindRefreshRequestedEvent();

  @override
  String toString() {
    return 'FindDeviceEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindRefreshRequestedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class FindRefreshRequestedEvent implements FindDeviceEvent {
  const factory FindRefreshRequestedEvent() = _$FindRefreshRequestedEvent;
}

/// @nodoc
abstract class $FindRefreshCompletedEventCopyWith<$Res> {
  factory $FindRefreshCompletedEventCopyWith(FindRefreshCompletedEvent value,
          $Res Function(FindRefreshCompletedEvent) then) =
      _$FindRefreshCompletedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindRefreshCompletedEventCopyWithImpl<$Res>
    extends _$FindDeviceEventCopyWithImpl<$Res>
    implements $FindRefreshCompletedEventCopyWith<$Res> {
  _$FindRefreshCompletedEventCopyWithImpl(FindRefreshCompletedEvent _value,
      $Res Function(FindRefreshCompletedEvent) _then)
      : super(_value, (v) => _then(v as FindRefreshCompletedEvent));

  @override
  FindRefreshCompletedEvent get _value =>
      super._value as FindRefreshCompletedEvent;
}

/// @nodoc

class _$FindRefreshCompletedEvent implements FindRefreshCompletedEvent {
  const _$FindRefreshCompletedEvent();

  @override
  String toString() {
    return 'FindDeviceEvent.refreshComplete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindRefreshCompletedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() scan,
    required TResult Function() scanStop,
    required TResult Function() scanComplete,
    required TResult Function() refresh,
    required TResult Function() refreshComplete,
  }) {
    return refreshComplete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? scan,
    TResult Function()? scanStop,
    TResult Function()? scanComplete,
    TResult Function()? refresh,
    TResult Function()? refreshComplete,
    required TResult orElse(),
  }) {
    if (refreshComplete != null) {
      return refreshComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindStartedEvent value) started,
    required TResult Function(FindScanRequestedEvent value) scan,
    required TResult Function(FindScanStopRequestedEvent value) scanStop,
    required TResult Function(FindScanCompletedEvent value) scanComplete,
    required TResult Function(FindRefreshRequestedEvent value) refresh,
    required TResult Function(FindRefreshCompletedEvent value) refreshComplete,
  }) {
    return refreshComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindStartedEvent value)? started,
    TResult Function(FindScanRequestedEvent value)? scan,
    TResult Function(FindScanStopRequestedEvent value)? scanStop,
    TResult Function(FindScanCompletedEvent value)? scanComplete,
    TResult Function(FindRefreshRequestedEvent value)? refresh,
    TResult Function(FindRefreshCompletedEvent value)? refreshComplete,
    required TResult orElse(),
  }) {
    if (refreshComplete != null) {
      return refreshComplete(this);
    }
    return orElse();
  }
}

abstract class FindRefreshCompletedEvent implements FindDeviceEvent {
  const factory FindRefreshCompletedEvent() = _$FindRefreshCompletedEvent;
}

/// @nodoc
class _$FindDeviceStateTearOff {
  const _$FindDeviceStateTearOff();

  FindInitialState initial() {
    return const FindInitialState();
  }

  FindCompletedScanState completedscan() {
    return const FindCompletedScanState();
  }

  FindCompletedRefreshState completedRefresh(
      List<MeshDevice> connectedDevices) {
    return FindCompletedRefreshState(
      connectedDevices,
    );
  }

  FindRequestedState findRequested() {
    return const FindRequestedState();
  }

  FindFailureState failed(ConnectFailure failure) {
    return FindFailureState(
      failure,
    );
  }
}

/// @nodoc
const $FindDeviceState = _$FindDeviceStateTearOff();

/// @nodoc
mixin _$FindDeviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completedscan,
    required TResult Function(List<MeshDevice> connectedDevices)
        completedRefresh,
    required TResult Function() findRequested,
    required TResult Function(ConnectFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completedscan,
    TResult Function(List<MeshDevice> connectedDevices)? completedRefresh,
    TResult Function()? findRequested,
    TResult Function(ConnectFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindInitialState value) initial,
    required TResult Function(FindCompletedScanState value) completedscan,
    required TResult Function(FindCompletedRefreshState value) completedRefresh,
    required TResult Function(FindRequestedState value) findRequested,
    required TResult Function(FindFailureState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindInitialState value)? initial,
    TResult Function(FindCompletedScanState value)? completedscan,
    TResult Function(FindCompletedRefreshState value)? completedRefresh,
    TResult Function(FindRequestedState value)? findRequested,
    TResult Function(FindFailureState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindDeviceStateCopyWith<$Res> {
  factory $FindDeviceStateCopyWith(
          FindDeviceState value, $Res Function(FindDeviceState) then) =
      _$FindDeviceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindDeviceStateCopyWithImpl<$Res>
    implements $FindDeviceStateCopyWith<$Res> {
  _$FindDeviceStateCopyWithImpl(this._value, this._then);

  final FindDeviceState _value;
  // ignore: unused_field
  final $Res Function(FindDeviceState) _then;
}

/// @nodoc
abstract class $FindInitialStateCopyWith<$Res> {
  factory $FindInitialStateCopyWith(
          FindInitialState value, $Res Function(FindInitialState) then) =
      _$FindInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindInitialStateCopyWithImpl<$Res>
    extends _$FindDeviceStateCopyWithImpl<$Res>
    implements $FindInitialStateCopyWith<$Res> {
  _$FindInitialStateCopyWithImpl(
      FindInitialState _value, $Res Function(FindInitialState) _then)
      : super(_value, (v) => _then(v as FindInitialState));

  @override
  FindInitialState get _value => super._value as FindInitialState;
}

/// @nodoc

class _$FindInitialState implements FindInitialState {
  const _$FindInitialState();

  @override
  String toString() {
    return 'FindDeviceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completedscan,
    required TResult Function(List<MeshDevice> connectedDevices)
        completedRefresh,
    required TResult Function() findRequested,
    required TResult Function(ConnectFailure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completedscan,
    TResult Function(List<MeshDevice> connectedDevices)? completedRefresh,
    TResult Function()? findRequested,
    TResult Function(ConnectFailure failure)? failed,
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
    required TResult Function(FindInitialState value) initial,
    required TResult Function(FindCompletedScanState value) completedscan,
    required TResult Function(FindCompletedRefreshState value) completedRefresh,
    required TResult Function(FindRequestedState value) findRequested,
    required TResult Function(FindFailureState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindInitialState value)? initial,
    TResult Function(FindCompletedScanState value)? completedscan,
    TResult Function(FindCompletedRefreshState value)? completedRefresh,
    TResult Function(FindRequestedState value)? findRequested,
    TResult Function(FindFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FindInitialState implements FindDeviceState {
  const factory FindInitialState() = _$FindInitialState;
}

/// @nodoc
abstract class $FindCompletedScanStateCopyWith<$Res> {
  factory $FindCompletedScanStateCopyWith(FindCompletedScanState value,
          $Res Function(FindCompletedScanState) then) =
      _$FindCompletedScanStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindCompletedScanStateCopyWithImpl<$Res>
    extends _$FindDeviceStateCopyWithImpl<$Res>
    implements $FindCompletedScanStateCopyWith<$Res> {
  _$FindCompletedScanStateCopyWithImpl(FindCompletedScanState _value,
      $Res Function(FindCompletedScanState) _then)
      : super(_value, (v) => _then(v as FindCompletedScanState));

  @override
  FindCompletedScanState get _value => super._value as FindCompletedScanState;
}

/// @nodoc

class _$FindCompletedScanState implements FindCompletedScanState {
  const _$FindCompletedScanState();

  @override
  String toString() {
    return 'FindDeviceState.completedscan()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindCompletedScanState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completedscan,
    required TResult Function(List<MeshDevice> connectedDevices)
        completedRefresh,
    required TResult Function() findRequested,
    required TResult Function(ConnectFailure failure) failed,
  }) {
    return completedscan();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completedscan,
    TResult Function(List<MeshDevice> connectedDevices)? completedRefresh,
    TResult Function()? findRequested,
    TResult Function(ConnectFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (completedscan != null) {
      return completedscan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindInitialState value) initial,
    required TResult Function(FindCompletedScanState value) completedscan,
    required TResult Function(FindCompletedRefreshState value) completedRefresh,
    required TResult Function(FindRequestedState value) findRequested,
    required TResult Function(FindFailureState value) failed,
  }) {
    return completedscan(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindInitialState value)? initial,
    TResult Function(FindCompletedScanState value)? completedscan,
    TResult Function(FindCompletedRefreshState value)? completedRefresh,
    TResult Function(FindRequestedState value)? findRequested,
    TResult Function(FindFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (completedscan != null) {
      return completedscan(this);
    }
    return orElse();
  }
}

abstract class FindCompletedScanState implements FindDeviceState {
  const factory FindCompletedScanState() = _$FindCompletedScanState;
}

/// @nodoc
abstract class $FindCompletedRefreshStateCopyWith<$Res> {
  factory $FindCompletedRefreshStateCopyWith(FindCompletedRefreshState value,
          $Res Function(FindCompletedRefreshState) then) =
      _$FindCompletedRefreshStateCopyWithImpl<$Res>;
  $Res call({List<MeshDevice> connectedDevices});
}

/// @nodoc
class _$FindCompletedRefreshStateCopyWithImpl<$Res>
    extends _$FindDeviceStateCopyWithImpl<$Res>
    implements $FindCompletedRefreshStateCopyWith<$Res> {
  _$FindCompletedRefreshStateCopyWithImpl(FindCompletedRefreshState _value,
      $Res Function(FindCompletedRefreshState) _then)
      : super(_value, (v) => _then(v as FindCompletedRefreshState));

  @override
  FindCompletedRefreshState get _value =>
      super._value as FindCompletedRefreshState;

  @override
  $Res call({
    Object? connectedDevices = freezed,
  }) {
    return _then(FindCompletedRefreshState(
      connectedDevices == freezed
          ? _value.connectedDevices
          : connectedDevices // ignore: cast_nullable_to_non_nullable
              as List<MeshDevice>,
    ));
  }
}

/// @nodoc

class _$FindCompletedRefreshState implements FindCompletedRefreshState {
  const _$FindCompletedRefreshState(this.connectedDevices);

  @override
  final List<MeshDevice> connectedDevices;

  @override
  String toString() {
    return 'FindDeviceState.completedRefresh(connectedDevices: $connectedDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FindCompletedRefreshState &&
            (identical(other.connectedDevices, connectedDevices) ||
                const DeepCollectionEquality()
                    .equals(other.connectedDevices, connectedDevices)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectedDevices);

  @JsonKey(ignore: true)
  @override
  $FindCompletedRefreshStateCopyWith<FindCompletedRefreshState> get copyWith =>
      _$FindCompletedRefreshStateCopyWithImpl<FindCompletedRefreshState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completedscan,
    required TResult Function(List<MeshDevice> connectedDevices)
        completedRefresh,
    required TResult Function() findRequested,
    required TResult Function(ConnectFailure failure) failed,
  }) {
    return completedRefresh(connectedDevices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completedscan,
    TResult Function(List<MeshDevice> connectedDevices)? completedRefresh,
    TResult Function()? findRequested,
    TResult Function(ConnectFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (completedRefresh != null) {
      return completedRefresh(connectedDevices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindInitialState value) initial,
    required TResult Function(FindCompletedScanState value) completedscan,
    required TResult Function(FindCompletedRefreshState value) completedRefresh,
    required TResult Function(FindRequestedState value) findRequested,
    required TResult Function(FindFailureState value) failed,
  }) {
    return completedRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindInitialState value)? initial,
    TResult Function(FindCompletedScanState value)? completedscan,
    TResult Function(FindCompletedRefreshState value)? completedRefresh,
    TResult Function(FindRequestedState value)? findRequested,
    TResult Function(FindFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (completedRefresh != null) {
      return completedRefresh(this);
    }
    return orElse();
  }
}

abstract class FindCompletedRefreshState implements FindDeviceState {
  const factory FindCompletedRefreshState(List<MeshDevice> connectedDevices) =
      _$FindCompletedRefreshState;

  List<MeshDevice> get connectedDevices => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindCompletedRefreshStateCopyWith<FindCompletedRefreshState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindRequestedStateCopyWith<$Res> {
  factory $FindRequestedStateCopyWith(
          FindRequestedState value, $Res Function(FindRequestedState) then) =
      _$FindRequestedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindRequestedStateCopyWithImpl<$Res>
    extends _$FindDeviceStateCopyWithImpl<$Res>
    implements $FindRequestedStateCopyWith<$Res> {
  _$FindRequestedStateCopyWithImpl(
      FindRequestedState _value, $Res Function(FindRequestedState) _then)
      : super(_value, (v) => _then(v as FindRequestedState));

  @override
  FindRequestedState get _value => super._value as FindRequestedState;
}

/// @nodoc

class _$FindRequestedState implements FindRequestedState {
  const _$FindRequestedState();

  @override
  String toString() {
    return 'FindDeviceState.findRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindRequestedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completedscan,
    required TResult Function(List<MeshDevice> connectedDevices)
        completedRefresh,
    required TResult Function() findRequested,
    required TResult Function(ConnectFailure failure) failed,
  }) {
    return findRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completedscan,
    TResult Function(List<MeshDevice> connectedDevices)? completedRefresh,
    TResult Function()? findRequested,
    TResult Function(ConnectFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (findRequested != null) {
      return findRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindInitialState value) initial,
    required TResult Function(FindCompletedScanState value) completedscan,
    required TResult Function(FindCompletedRefreshState value) completedRefresh,
    required TResult Function(FindRequestedState value) findRequested,
    required TResult Function(FindFailureState value) failed,
  }) {
    return findRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindInitialState value)? initial,
    TResult Function(FindCompletedScanState value)? completedscan,
    TResult Function(FindCompletedRefreshState value)? completedRefresh,
    TResult Function(FindRequestedState value)? findRequested,
    TResult Function(FindFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (findRequested != null) {
      return findRequested(this);
    }
    return orElse();
  }
}

abstract class FindRequestedState implements FindDeviceState {
  const factory FindRequestedState() = _$FindRequestedState;
}

/// @nodoc
abstract class $FindFailureStateCopyWith<$Res> {
  factory $FindFailureStateCopyWith(
          FindFailureState value, $Res Function(FindFailureState) then) =
      _$FindFailureStateCopyWithImpl<$Res>;
  $Res call({ConnectFailure failure});

  $ConnectFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FindFailureStateCopyWithImpl<$Res>
    extends _$FindDeviceStateCopyWithImpl<$Res>
    implements $FindFailureStateCopyWith<$Res> {
  _$FindFailureStateCopyWithImpl(
      FindFailureState _value, $Res Function(FindFailureState) _then)
      : super(_value, (v) => _then(v as FindFailureState));

  @override
  FindFailureState get _value => super._value as FindFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(FindFailureState(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ConnectFailure,
    ));
  }

  @override
  $ConnectFailureCopyWith<$Res> get failure {
    return $ConnectFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FindFailureState implements FindFailureState {
  const _$FindFailureState(this.failure);

  @override
  final ConnectFailure failure;

  @override
  String toString() {
    return 'FindDeviceState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FindFailureState &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $FindFailureStateCopyWith<FindFailureState> get copyWith =>
      _$FindFailureStateCopyWithImpl<FindFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() completedscan,
    required TResult Function(List<MeshDevice> connectedDevices)
        completedRefresh,
    required TResult Function() findRequested,
    required TResult Function(ConnectFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? completedscan,
    TResult Function(List<MeshDevice> connectedDevices)? completedRefresh,
    TResult Function()? findRequested,
    TResult Function(ConnectFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FindInitialState value) initial,
    required TResult Function(FindCompletedScanState value) completedscan,
    required TResult Function(FindCompletedRefreshState value) completedRefresh,
    required TResult Function(FindRequestedState value) findRequested,
    required TResult Function(FindFailureState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FindInitialState value)? initial,
    TResult Function(FindCompletedScanState value)? completedscan,
    TResult Function(FindCompletedRefreshState value)? completedRefresh,
    TResult Function(FindRequestedState value)? findRequested,
    TResult Function(FindFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FindFailureState implements FindDeviceState {
  const factory FindFailureState(ConnectFailure failure) = _$FindFailureState;

  ConnectFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindFailureStateCopyWith<FindFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
