import 'package:dartz/dartz.dart';
import 'package:meshtastic_app/domain/core/failures.dart';
import 'package:meshtastic_app/domain/core/value_objects.dart';
import 'package:meshtastic_app/domain/core/value_validators.dart';

class DeviceAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DeviceAddress(String input) {
    assert(input != null);
    return DeviceAddress._(
      validateDeviceAddress(input),
    );
  }

  const DeviceAddress._(this.value);
}

// class Password extends ValueObject<String> {
//   @override
//   final Either<ValueFailure<String>, String> value;

//   factory Password(String input) {
//     assert(input != null);
//     return Password._(
//       validatePassword(input),
//     );
//   }

//   const Password._(this.value);
// }
