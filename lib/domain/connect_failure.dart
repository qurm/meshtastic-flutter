import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'connect_failure.freezed.dart';

@freezed
abstract class ConnectFailure with _$ConnectFailure {
  /// from the UI - timeout, cancel etc?
  const factory ConnectFailure.cancelledByUser() = CancelledByUser;

  // is this a Failure?
  const factory ConnectFailure.noDevice() = NoDevice; // is this a Failure?

  //cannot reconnect to know good device (after restart, startup)
  const factory ConnectFailure.noKnownDevice() = NoKnownDevice;

  /// from the device, unable to connect, sleep, turned off
  const factory ConnectFailure.deviceError() = InvalidDeviceAddress;

  /// from the device, Bluetooth is not on, or not present
  const factory ConnectFailure.nobluetooth() = NoBluetooth;
}
