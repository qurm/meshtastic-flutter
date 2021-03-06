// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'connect_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectFailureTearOff {
  const _$ConnectFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  NoDevice noDevice() {
    return const NoDevice();
  }

  NoKnownDevice noKnownDevice() {
    return const NoKnownDevice();
  }

  InvalidDeviceAddress deviceError() {
    return const InvalidDeviceAddress();
  }

  NoBluetooth nobluetooth() {
    return const NoBluetooth();
  }
}

/// @nodoc
const $ConnectFailure = _$ConnectFailureTearOff();

/// @nodoc
mixin _$ConnectFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noDevice,
    required TResult Function() noKnownDevice,
    required TResult Function() deviceError,
    required TResult Function() nobluetooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noDevice,
    TResult Function()? noKnownDevice,
    TResult Function()? deviceError,
    TResult Function()? nobluetooth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoDevice value) noDevice,
    required TResult Function(NoKnownDevice value) noKnownDevice,
    required TResult Function(InvalidDeviceAddress value) deviceError,
    required TResult Function(NoBluetooth value) nobluetooth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoDevice value)? noDevice,
    TResult Function(NoKnownDevice value)? noKnownDevice,
    TResult Function(InvalidDeviceAddress value)? deviceError,
    TResult Function(NoBluetooth value)? nobluetooth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectFailureCopyWith<$Res> {
  factory $ConnectFailureCopyWith(
          ConnectFailure value, $Res Function(ConnectFailure) then) =
      _$ConnectFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectFailureCopyWithImpl<$Res>
    implements $ConnectFailureCopyWith<$Res> {
  _$ConnectFailureCopyWithImpl(this._value, this._then);

  final ConnectFailure _value;
  // ignore: unused_field
  final $Res Function(ConnectFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$ConnectFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser
    with DiagnosticableTreeMixin
    implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectFailure.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectFailure.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noDevice,
    required TResult Function() noKnownDevice,
    required TResult Function() deviceError,
    required TResult Function() nobluetooth,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noDevice,
    TResult Function()? noKnownDevice,
    TResult Function()? deviceError,
    TResult Function()? nobluetooth,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoDevice value) noDevice,
    required TResult Function(NoKnownDevice value) noKnownDevice,
    required TResult Function(InvalidDeviceAddress value) deviceError,
    required TResult Function(NoBluetooth value) nobluetooth,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoDevice value)? noDevice,
    TResult Function(NoKnownDevice value)? noKnownDevice,
    TResult Function(InvalidDeviceAddress value)? deviceError,
    TResult Function(NoBluetooth value)? nobluetooth,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements ConnectFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $NoDeviceCopyWith<$Res> {
  factory $NoDeviceCopyWith(NoDevice value, $Res Function(NoDevice) then) =
      _$NoDeviceCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoDeviceCopyWithImpl<$Res> extends _$ConnectFailureCopyWithImpl<$Res>
    implements $NoDeviceCopyWith<$Res> {
  _$NoDeviceCopyWithImpl(NoDevice _value, $Res Function(NoDevice) _then)
      : super(_value, (v) => _then(v as NoDevice));

  @override
  NoDevice get _value => super._value as NoDevice;
}

/// @nodoc

class _$NoDevice with DiagnosticableTreeMixin implements NoDevice {
  const _$NoDevice();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectFailure.noDevice()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ConnectFailure.noDevice'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoDevice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noDevice,
    required TResult Function() noKnownDevice,
    required TResult Function() deviceError,
    required TResult Function() nobluetooth,
  }) {
    return noDevice();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noDevice,
    TResult Function()? noKnownDevice,
    TResult Function()? deviceError,
    TResult Function()? nobluetooth,
    required TResult orElse(),
  }) {
    if (noDevice != null) {
      return noDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoDevice value) noDevice,
    required TResult Function(NoKnownDevice value) noKnownDevice,
    required TResult Function(InvalidDeviceAddress value) deviceError,
    required TResult Function(NoBluetooth value) nobluetooth,
  }) {
    return noDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoDevice value)? noDevice,
    TResult Function(NoKnownDevice value)? noKnownDevice,
    TResult Function(InvalidDeviceAddress value)? deviceError,
    TResult Function(NoBluetooth value)? nobluetooth,
    required TResult orElse(),
  }) {
    if (noDevice != null) {
      return noDevice(this);
    }
    return orElse();
  }
}

abstract class NoDevice implements ConnectFailure {
  const factory NoDevice() = _$NoDevice;
}

/// @nodoc
abstract class $NoKnownDeviceCopyWith<$Res> {
  factory $NoKnownDeviceCopyWith(
          NoKnownDevice value, $Res Function(NoKnownDevice) then) =
      _$NoKnownDeviceCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoKnownDeviceCopyWithImpl<$Res>
    extends _$ConnectFailureCopyWithImpl<$Res>
    implements $NoKnownDeviceCopyWith<$Res> {
  _$NoKnownDeviceCopyWithImpl(
      NoKnownDevice _value, $Res Function(NoKnownDevice) _then)
      : super(_value, (v) => _then(v as NoKnownDevice));

  @override
  NoKnownDevice get _value => super._value as NoKnownDevice;
}

/// @nodoc

class _$NoKnownDevice with DiagnosticableTreeMixin implements NoKnownDevice {
  const _$NoKnownDevice();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectFailure.noKnownDevice()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectFailure.noKnownDevice'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoKnownDevice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noDevice,
    required TResult Function() noKnownDevice,
    required TResult Function() deviceError,
    required TResult Function() nobluetooth,
  }) {
    return noKnownDevice();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noDevice,
    TResult Function()? noKnownDevice,
    TResult Function()? deviceError,
    TResult Function()? nobluetooth,
    required TResult orElse(),
  }) {
    if (noKnownDevice != null) {
      return noKnownDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoDevice value) noDevice,
    required TResult Function(NoKnownDevice value) noKnownDevice,
    required TResult Function(InvalidDeviceAddress value) deviceError,
    required TResult Function(NoBluetooth value) nobluetooth,
  }) {
    return noKnownDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoDevice value)? noDevice,
    TResult Function(NoKnownDevice value)? noKnownDevice,
    TResult Function(InvalidDeviceAddress value)? deviceError,
    TResult Function(NoBluetooth value)? nobluetooth,
    required TResult orElse(),
  }) {
    if (noKnownDevice != null) {
      return noKnownDevice(this);
    }
    return orElse();
  }
}

abstract class NoKnownDevice implements ConnectFailure {
  const factory NoKnownDevice() = _$NoKnownDevice;
}

/// @nodoc
abstract class $InvalidDeviceAddressCopyWith<$Res> {
  factory $InvalidDeviceAddressCopyWith(InvalidDeviceAddress value,
          $Res Function(InvalidDeviceAddress) then) =
      _$InvalidDeviceAddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidDeviceAddressCopyWithImpl<$Res>
    extends _$ConnectFailureCopyWithImpl<$Res>
    implements $InvalidDeviceAddressCopyWith<$Res> {
  _$InvalidDeviceAddressCopyWithImpl(
      InvalidDeviceAddress _value, $Res Function(InvalidDeviceAddress) _then)
      : super(_value, (v) => _then(v as InvalidDeviceAddress));

  @override
  InvalidDeviceAddress get _value => super._value as InvalidDeviceAddress;
}

/// @nodoc

class _$InvalidDeviceAddress
    with DiagnosticableTreeMixin
    implements InvalidDeviceAddress {
  const _$InvalidDeviceAddress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectFailure.deviceError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ConnectFailure.deviceError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidDeviceAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noDevice,
    required TResult Function() noKnownDevice,
    required TResult Function() deviceError,
    required TResult Function() nobluetooth,
  }) {
    return deviceError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noDevice,
    TResult Function()? noKnownDevice,
    TResult Function()? deviceError,
    TResult Function()? nobluetooth,
    required TResult orElse(),
  }) {
    if (deviceError != null) {
      return deviceError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoDevice value) noDevice,
    required TResult Function(NoKnownDevice value) noKnownDevice,
    required TResult Function(InvalidDeviceAddress value) deviceError,
    required TResult Function(NoBluetooth value) nobluetooth,
  }) {
    return deviceError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoDevice value)? noDevice,
    TResult Function(NoKnownDevice value)? noKnownDevice,
    TResult Function(InvalidDeviceAddress value)? deviceError,
    TResult Function(NoBluetooth value)? nobluetooth,
    required TResult orElse(),
  }) {
    if (deviceError != null) {
      return deviceError(this);
    }
    return orElse();
  }
}

abstract class InvalidDeviceAddress implements ConnectFailure {
  const factory InvalidDeviceAddress() = _$InvalidDeviceAddress;
}

/// @nodoc
abstract class $NoBluetoothCopyWith<$Res> {
  factory $NoBluetoothCopyWith(
          NoBluetooth value, $Res Function(NoBluetooth) then) =
      _$NoBluetoothCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoBluetoothCopyWithImpl<$Res> extends _$ConnectFailureCopyWithImpl<$Res>
    implements $NoBluetoothCopyWith<$Res> {
  _$NoBluetoothCopyWithImpl(
      NoBluetooth _value, $Res Function(NoBluetooth) _then)
      : super(_value, (v) => _then(v as NoBluetooth));

  @override
  NoBluetooth get _value => super._value as NoBluetooth;
}

/// @nodoc

class _$NoBluetooth with DiagnosticableTreeMixin implements NoBluetooth {
  const _$NoBluetooth();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectFailure.nobluetooth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ConnectFailure.nobluetooth'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoBluetooth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noDevice,
    required TResult Function() noKnownDevice,
    required TResult Function() deviceError,
    required TResult Function() nobluetooth,
  }) {
    return nobluetooth();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noDevice,
    TResult Function()? noKnownDevice,
    TResult Function()? deviceError,
    TResult Function()? nobluetooth,
    required TResult orElse(),
  }) {
    if (nobluetooth != null) {
      return nobluetooth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoDevice value) noDevice,
    required TResult Function(NoKnownDevice value) noKnownDevice,
    required TResult Function(InvalidDeviceAddress value) deviceError,
    required TResult Function(NoBluetooth value) nobluetooth,
  }) {
    return nobluetooth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoDevice value)? noDevice,
    TResult Function(NoKnownDevice value)? noKnownDevice,
    TResult Function(InvalidDeviceAddress value)? deviceError,
    TResult Function(NoBluetooth value)? nobluetooth,
    required TResult orElse(),
  }) {
    if (nobluetooth != null) {
      return nobluetooth(this);
    }
    return orElse();
  }
}

abstract class NoBluetooth implements ConnectFailure {
  const factory NoBluetooth() = _$NoBluetooth;
}
