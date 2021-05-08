import 'package:dartz/dartz.dart';
// import 'package:kt_dart/kt.dart';
import '../value_objects.dart';
import 'failures.dart';

/// AF 2021-05-08 temp remove while doing null safe conversion

// Either<ValueFailure<String>, String> validateMaxStringLength(
//   String input,
//   int maxLength,
// ) {
//   if (input.length <= maxLength) {
//     return right(input);
//   } else {
//     return left(
//       ValueFailure.exceedingLength(failedValue: input, max: maxLength),
//     );
//   }
// }

// Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
//   if (input.isNotEmpty) {
//     return right(input);
//   } else {
//     return left(ValueFailure.empty(failedValue: input));
//   }
// }

// Either<ValueFailure<String>, String> validateSingleLine(String input) {
//   if (input.contains('\n')) {
//     return left(ValueFailure.multiline(failedValue: input));
//   } else {
//     return right(input);
//   }
// }

// // todo define a regex.  Do we need to validate, if device comes from the OS/Flutter_blue - maybe just a null check
// Either<ValueFailure<String>, String> validateDeviceAddress(String input) {
//   if (input != null) {
//     return right(input);
//   } else {
//     return left(ValueFailure.invalidDeviceAddress(failedValue: input));
//   }
// }

// Either<ValueFailure<String>, String> validateEmailAddress(String input) {
//   const emailRegex =
//       r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
//   if (RegExp(emailRegex).hasMatch(input)) {
//     return right(input);
//   } else {
//     return left(ValueFailure.invalidEmail(failedValue: input));
//   }
// }

// Either<ValueFailure<String>, String> validatePassword(String input) {
//   if (input.length >= 6) {
//     return right(input);
//   } else {
//     return left(ValueFailure.shortPassword(failedValue: input));
//   }
// }
