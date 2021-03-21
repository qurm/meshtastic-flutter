// @dart=2.9
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'command_failure.freezed.dart';

@freezed
abstract class CommandFailure with _$CommandFailure {
  /// from the UI - timeout, cancel etc?
  const factory CommandFailure.cancelledByUser() = CancelledByUser;
  //used in mesh_api, setPreference
  const factory CommandFailure.unknownCommand() = UnknownCommand;
  const factory CommandFailure.incorrectParameter() = IncorrectParameter;
  const factory CommandFailure.unexpected() = UnexpectedFailure;
}
