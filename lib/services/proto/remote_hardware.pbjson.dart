///
//  Generated code. Do not modify.
//  source: remote_hardware.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use hardwareMessageDescriptor instead')
const HardwareMessage$json = const {
  '1': 'HardwareMessage',
  '2': const [
    const {'1': 'typ', '3': 1, '4': 1, '5': 14, '6': '.HardwareMessage.Type', '10': 'typ'},
    const {'1': 'gpio_mask', '3': 2, '4': 1, '5': 4, '10': 'gpioMask'},
    const {'1': 'gpio_value', '3': 3, '4': 1, '5': 4, '10': 'gpioValue'},
  ],
  '4': const [HardwareMessage_Type$json],
};

@$core.Deprecated('Use hardwareMessageDescriptor instead')
const HardwareMessage_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'UNSET', '2': 0},
    const {'1': 'WRITE_GPIOS', '2': 1},
    const {'1': 'WATCH_GPIOS', '2': 2},
    const {'1': 'GPIOS_CHANGED', '2': 3},
    const {'1': 'READ_GPIOS', '2': 4},
    const {'1': 'READ_GPIOS_REPLY', '2': 5},
  ],
};

/// Descriptor for `HardwareMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hardwareMessageDescriptor = $convert.base64Decode('Cg9IYXJkd2FyZU1lc3NhZ2USJwoDdHlwGAEgASgOMhUuSGFyZHdhcmVNZXNzYWdlLlR5cGVSA3R5cBIbCglncGlvX21hc2sYAiABKARSCGdwaW9NYXNrEh0KCmdwaW9fdmFsdWUYAyABKARSCWdwaW9WYWx1ZSJsCgRUeXBlEgkKBVVOU0VUEAASDwoLV1JJVEVfR1BJT1MQARIPCgtXQVRDSF9HUElPUxACEhEKDUdQSU9TX0NIQU5HRUQQAxIOCgpSRUFEX0dQSU9TEAQSFAoQUkVBRF9HUElPU19SRVBMWRAF');
