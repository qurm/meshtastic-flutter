
/// AF 2021-05-08 temp remove while doing null safe conversion
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'failures.freezed.dart';

// @freezed
// abstract class ValueFailure<T> with _$ValueFailure<T> {
//   const factory ValueFailure.exceedingLength({
//     @required T failedValue,
//     @required int max,
//   }) = ExceedingLength<T>;
//   const factory ValueFailure.empty({
//     @required T failedValue,
//   }) = Empty<T>;
//   const factory ValueFailure.multiline({
//     @required T failedValue,
//   }) = Multiline<T>;
//   const factory ValueFailure.listTooLong({
//     @required T failedValue,
//     @required int max,
//   }) = ListTooLong<T>;

//   const factory ValueFailure.invalidDeviceAddress({
//     @required T failedValue,
//   }) = InvalidDeviceAddress<T>;

//   /// from the device, Bluetooth is not on, or not present
//   // const factory ConnectFailure.nobluetooth() = NoBluetooth;
//   const factory ValueFailure.invalidEmail({
//     @required T failedValue,
//   }) = InvalidEmail<T>;
//   const factory ValueFailure.shortPassword({
//     @required T failedValue,
//   }) = ShortPassword<T>;
// }
