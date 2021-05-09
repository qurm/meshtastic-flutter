// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'command_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommandFailureTearOff {
  const _$CommandFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  UnknownCommand unknownCommand() {
    return const UnknownCommand();
  }

  IncorrectParameter incorrectParameter() {
    return const IncorrectParameter();
  }

  UnexpectedFailure unexpected() {
    return const UnexpectedFailure();
  }
}

/// @nodoc
const $CommandFailure = _$CommandFailureTearOff();

/// @nodoc
mixin _$CommandFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() unknownCommand,
    required TResult Function() incorrectParameter,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? unknownCommand,
    TResult Function()? incorrectParameter,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(UnknownCommand value) unknownCommand,
    required TResult Function(IncorrectParameter value) incorrectParameter,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(UnknownCommand value)? unknownCommand,
    TResult Function(IncorrectParameter value)? incorrectParameter,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandFailureCopyWith<$Res> {
  factory $CommandFailureCopyWith(
          CommandFailure value, $Res Function(CommandFailure) then) =
      _$CommandFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommandFailureCopyWithImpl<$Res>
    implements $CommandFailureCopyWith<$Res> {
  _$CommandFailureCopyWithImpl(this._value, this._then);

  final CommandFailure _value;
  // ignore: unused_field
  final $Res Function(CommandFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$CommandFailureCopyWithImpl<$Res>
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
    return 'CommandFailure.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandFailure.cancelledByUser'));
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
    required TResult Function() unknownCommand,
    required TResult Function() incorrectParameter,
    required TResult Function() unexpected,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? unknownCommand,
    TResult Function()? incorrectParameter,
    TResult Function()? unexpected,
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
    required TResult Function(UnknownCommand value) unknownCommand,
    required TResult Function(IncorrectParameter value) incorrectParameter,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(UnknownCommand value)? unknownCommand,
    TResult Function(IncorrectParameter value)? incorrectParameter,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements CommandFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $UnknownCommandCopyWith<$Res> {
  factory $UnknownCommandCopyWith(
          UnknownCommand value, $Res Function(UnknownCommand) then) =
      _$UnknownCommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownCommandCopyWithImpl<$Res>
    extends _$CommandFailureCopyWithImpl<$Res>
    implements $UnknownCommandCopyWith<$Res> {
  _$UnknownCommandCopyWithImpl(
      UnknownCommand _value, $Res Function(UnknownCommand) _then)
      : super(_value, (v) => _then(v as UnknownCommand));

  @override
  UnknownCommand get _value => super._value as UnknownCommand;
}

/// @nodoc

class _$UnknownCommand with DiagnosticableTreeMixin implements UnknownCommand {
  const _$UnknownCommand();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandFailure.unknownCommand()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandFailure.unknownCommand'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownCommand);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() unknownCommand,
    required TResult Function() incorrectParameter,
    required TResult Function() unexpected,
  }) {
    return unknownCommand();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? unknownCommand,
    TResult Function()? incorrectParameter,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unknownCommand != null) {
      return unknownCommand();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(UnknownCommand value) unknownCommand,
    required TResult Function(IncorrectParameter value) incorrectParameter,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return unknownCommand(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(UnknownCommand value)? unknownCommand,
    TResult Function(IncorrectParameter value)? incorrectParameter,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unknownCommand != null) {
      return unknownCommand(this);
    }
    return orElse();
  }
}

abstract class UnknownCommand implements CommandFailure {
  const factory UnknownCommand() = _$UnknownCommand;
}

/// @nodoc
abstract class $IncorrectParameterCopyWith<$Res> {
  factory $IncorrectParameterCopyWith(
          IncorrectParameter value, $Res Function(IncorrectParameter) then) =
      _$IncorrectParameterCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncorrectParameterCopyWithImpl<$Res>
    extends _$CommandFailureCopyWithImpl<$Res>
    implements $IncorrectParameterCopyWith<$Res> {
  _$IncorrectParameterCopyWithImpl(
      IncorrectParameter _value, $Res Function(IncorrectParameter) _then)
      : super(_value, (v) => _then(v as IncorrectParameter));

  @override
  IncorrectParameter get _value => super._value as IncorrectParameter;
}

/// @nodoc

class _$IncorrectParameter
    with DiagnosticableTreeMixin
    implements IncorrectParameter {
  const _$IncorrectParameter();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandFailure.incorrectParameter()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommandFailure.incorrectParameter'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncorrectParameter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() unknownCommand,
    required TResult Function() incorrectParameter,
    required TResult Function() unexpected,
  }) {
    return incorrectParameter();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? unknownCommand,
    TResult Function()? incorrectParameter,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (incorrectParameter != null) {
      return incorrectParameter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(UnknownCommand value) unknownCommand,
    required TResult Function(IncorrectParameter value) incorrectParameter,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return incorrectParameter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(UnknownCommand value)? unknownCommand,
    TResult Function(IncorrectParameter value)? incorrectParameter,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (incorrectParameter != null) {
      return incorrectParameter(this);
    }
    return orElse();
  }
}

abstract class IncorrectParameter implements CommandFailure {
  const factory IncorrectParameter() = _$IncorrectParameter;
}

/// @nodoc
abstract class $UnexpectedFailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(
          UnexpectedFailure value, $Res Function(UnexpectedFailure) then) =
      _$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    extends _$CommandFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(
      UnexpectedFailure _value, $Res Function(UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedFailure));

  @override
  UnexpectedFailure get _value => super._value as UnexpectedFailure;
}

/// @nodoc

class _$UnexpectedFailure
    with DiagnosticableTreeMixin
    implements UnexpectedFailure {
  const _$UnexpectedFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommandFailure.unexpected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CommandFailure.unexpected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() unknownCommand,
    required TResult Function() incorrectParameter,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? unknownCommand,
    TResult Function()? incorrectParameter,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(UnknownCommand value) unknownCommand,
    required TResult Function(IncorrectParameter value) incorrectParameter,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(UnknownCommand value)? unknownCommand,
    TResult Function(IncorrectParameter value)? incorrectParameter,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements CommandFailure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}
