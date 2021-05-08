///
//  Generated code. Do not modify.
//  source: mesh.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use hardwareModelDescriptor instead')
const HardwareModel$json = const {
  '1': 'HardwareModel',
  '2': const [
    const {'1': 'UNSET', '2': 0},
    const {'1': 'TLORA_V2', '2': 1},
    const {'1': 'TLORA_V1', '2': 2},
    const {'1': 'TLORA_V2_1_1p6', '2': 3},
    const {'1': 'TBEAM', '2': 4},
    const {'1': 'HELTEC', '2': 5},
    const {'1': 'TBEAM0p7', '2': 6},
    const {'1': 'T_ECHO', '2': 7},
    const {'1': 'TLORA_V1_1p3', '2': 8},
    const {'1': 'LORA_RELAY_V1', '2': 32},
    const {'1': 'NRF52840DK', '2': 33},
    const {'1': 'PPR', '2': 34},
    const {'1': 'GENIEBLOCKS', '2': 35},
    const {'1': 'NRF52_UNKNOWN', '2': 36},
    const {'1': 'PORTDUINO', '2': 37},
    const {'1': 'ANDROID_SIM', '2': 38},
  ],
};

/// Descriptor for `HardwareModel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hardwareModelDescriptor = $convert.base64Decode('Cg1IYXJkd2FyZU1vZGVsEgkKBVVOU0VUEAASDAoIVExPUkFfVjIQARIMCghUTE9SQV9WMRACEhIKDlRMT1JBX1YyXzFfMXA2EAMSCQoFVEJFQU0QBBIKCgZIRUxURUMQBRIMCghUQkVBTTBwNxAGEgoKBlRfRUNITxAHEhAKDFRMT1JBX1YxXzFwMxAIEhEKDUxPUkFfUkVMQVlfVjEQIBIOCgpOUkY1Mjg0MERLECESBwoDUFBSECISDwoLR0VOSUVCTE9DS1MQIxIRCg1OUkY1Ml9VTktOT1dOECQSDQoJUE9SVERVSU5PECUSDwoLQU5EUk9JRF9TSU0QJg==');
@$core.Deprecated('Use constantsDescriptor instead')
const Constants$json = const {
  '1': 'Constants',
  '2': const [
    const {'1': 'Unused', '2': 0},
    const {'1': 'DATA_PAYLOAD_LEN', '2': 240},
  ],
};

/// Descriptor for `Constants`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List constantsDescriptor = $convert.base64Decode('CglDb25zdGFudHMSCgoGVW51c2VkEAASFQoQREFUQV9QQVlMT0FEX0xFThDwAQ==');
@$core.Deprecated('Use criticalErrorCodeDescriptor instead')
const CriticalErrorCode$json = const {
  '1': 'CriticalErrorCode',
  '2': const [
    const {'1': 'None', '2': 0},
    const {'1': 'TxWatchdog', '2': 1},
    const {'1': 'SleepEnterWait', '2': 2},
    const {'1': 'NoRadio', '2': 3},
    const {'1': 'Unspecified', '2': 4},
    const {'1': 'UBloxInitFailed', '2': 5},
    const {'1': 'NoAXP192', '2': 6},
    const {'1': 'InvalidRadioSetting', '2': 7},
    const {'1': 'TransmitFailed', '2': 8},
    const {'1': 'Brownout', '2': 9},
  ],
};

/// Descriptor for `CriticalErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List criticalErrorCodeDescriptor = $convert.base64Decode('ChFDcml0aWNhbEVycm9yQ29kZRIICgROb25lEAASDgoKVHhXYXRjaGRvZxABEhIKDlNsZWVwRW50ZXJXYWl0EAISCwoHTm9SYWRpbxADEg8KC1Vuc3BlY2lmaWVkEAQSEwoPVUJsb3hJbml0RmFpbGVkEAUSDAoITm9BWFAxOTIQBhIXChNJbnZhbGlkUmFkaW9TZXR0aW5nEAcSEgoOVHJhbnNtaXRGYWlsZWQQCBIMCghCcm93bm91dBAJ');
@$core.Deprecated('Use positionDescriptor instead')
const Position$json = const {
  '1': 'Position',
  '2': const [
    const {'1': 'latitude_i', '3': 1, '4': 1, '5': 15, '10': 'latitudeI'},
    const {'1': 'longitude_i', '3': 2, '4': 1, '5': 15, '10': 'longitudeI'},
    const {'1': 'altitude', '3': 3, '4': 1, '5': 5, '10': 'altitude'},
    const {'1': 'battery_level', '3': 4, '4': 1, '5': 5, '10': 'batteryLevel'},
    const {'1': 'time', '3': 9, '4': 1, '5': 7, '10': 'time'},
  ],
  '9': const [
    const {'1': 7, '2': 8},
    const {'1': 8, '2': 9},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode('CghQb3NpdGlvbhIdCgpsYXRpdHVkZV9pGAEgASgPUglsYXRpdHVkZUkSHwoLbG9uZ2l0dWRlX2kYAiABKA9SCmxvbmdpdHVkZUkSGgoIYWx0aXR1ZGUYAyABKAVSCGFsdGl0dWRlEiMKDWJhdHRlcnlfbGV2ZWwYBCABKAVSDGJhdHRlcnlMZXZlbBISCgR0aW1lGAkgASgHUgR0aW1lSgQIBxAISgQICBAJ');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    const {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'macaddr', '3': 4, '4': 1, '5': 12, '10': 'macaddr'},
    const {'1': 'hw_model', '3': 6, '4': 1, '5': 14, '6': '.HardwareModel', '10': 'hwModel'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIbCglsb25nX25hbWUYAiABKAlSCGxvbmdOYW1lEh0KCnNob3J0X25hbWUYAyABKAlSCXNob3J0TmFtZRIYCgdtYWNhZGRyGAQgASgMUgdtYWNhZGRyEikKCGh3X21vZGVsGAYgASgOMg4uSGFyZHdhcmVNb2RlbFIHaHdNb2RlbA==');
@$core.Deprecated('Use routeDiscoveryDescriptor instead')
const RouteDiscovery$json = const {
  '1': 'RouteDiscovery',
  '2': const [
    const {'1': 'route', '3': 2, '4': 3, '5': 7, '10': 'route'},
  ],
};

/// Descriptor for `RouteDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeDiscoveryDescriptor = $convert.base64Decode('Cg5Sb3V0ZURpc2NvdmVyeRIUCgVyb3V0ZRgCIAMoB1IFcm91dGU=');
@$core.Deprecated('Use routingDescriptor instead')
const Routing$json = const {
  '1': 'Routing',
  '2': const [
    const {'1': 'route_request', '3': 1, '4': 1, '5': 11, '6': '.RouteDiscovery', '9': 0, '10': 'routeRequest'},
    const {'1': 'route_reply', '3': 2, '4': 1, '5': 11, '6': '.RouteDiscovery', '9': 0, '10': 'routeReply'},
    const {'1': 'error_reason', '3': 3, '4': 1, '5': 14, '6': '.Routing.Error', '9': 0, '10': 'errorReason'},
  ],
  '4': const [Routing_Error$json],
  '8': const [
    const {'1': 'variant'},
  ],
};

@$core.Deprecated('Use routingDescriptor instead')
const Routing_Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'NO_ROUTE', '2': 1},
    const {'1': 'GOT_NAK', '2': 2},
    const {'1': 'TIMEOUT', '2': 3},
    const {'1': 'NO_INTERFACE', '2': 4},
    const {'1': 'MAX_RETRANSMIT', '2': 5},
    const {'1': 'NO_CHANNEL', '2': 6},
    const {'1': 'TOO_LARGE', '2': 7},
    const {'1': 'NO_RESPONSE', '2': 8},
  ],
};

/// Descriptor for `Routing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routingDescriptor = $convert.base64Decode('CgdSb3V0aW5nEjYKDXJvdXRlX3JlcXVlc3QYASABKAsyDy5Sb3V0ZURpc2NvdmVyeUgAUgxyb3V0ZVJlcXVlc3QSMgoLcm91dGVfcmVwbHkYAiABKAsyDy5Sb3V0ZURpc2NvdmVyeUgAUgpyb3V0ZVJlcGx5EjMKDGVycm9yX3JlYXNvbhgDIAEoDjIOLlJvdXRpbmcuRXJyb3JIAFILZXJyb3JSZWFzb24ijwEKBUVycm9yEggKBE5PTkUQABIMCghOT19ST1VURRABEgsKB0dPVF9OQUsQAhILCgdUSU1FT1VUEAMSEAoMTk9fSU5URVJGQUNFEAQSEgoOTUFYX1JFVFJBTlNNSVQQBRIOCgpOT19DSEFOTkVMEAYSDQoJVE9PX0xBUkdFEAcSDwoLTk9fUkVTUE9OU0UQCEIJCgd2YXJpYW50');
@$core.Deprecated('Use dataDescriptor instead')
const Data$json = const {
  '1': 'Data',
  '2': const [
    const {'1': 'portnum', '3': 1, '4': 1, '5': 14, '6': '.PortNum', '10': 'portnum'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'want_response', '3': 3, '4': 1, '5': 8, '10': 'wantResponse'},
    const {'1': 'dest', '3': 4, '4': 1, '5': 7, '10': 'dest'},
    const {'1': 'source', '3': 5, '4': 1, '5': 7, '10': 'source'},
    const {'1': 'request_id', '3': 6, '4': 1, '5': 7, '10': 'requestId'},
  ],
};

/// Descriptor for `Data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataDescriptor = $convert.base64Decode('CgREYXRhEiIKB3BvcnRudW0YASABKA4yCC5Qb3J0TnVtUgdwb3J0bnVtEhgKB3BheWxvYWQYAiABKAxSB3BheWxvYWQSIwoNd2FudF9yZXNwb25zZRgDIAEoCFIMd2FudFJlc3BvbnNlEhIKBGRlc3QYBCABKAdSBGRlc3QSFgoGc291cmNlGAUgASgHUgZzb3VyY2USHQoKcmVxdWVzdF9pZBgGIAEoB1IJcmVxdWVzdElk');
@$core.Deprecated('Use meshPacketDescriptor instead')
const MeshPacket$json = const {
  '1': 'MeshPacket',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 7, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 7, '10': 'to'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 13, '10': 'channel'},
    const {'1': 'decoded', '3': 4, '4': 1, '5': 11, '6': '.Data', '9': 0, '10': 'decoded'},
    const {'1': 'encrypted', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'encrypted'},
    const {'1': 'id', '3': 6, '4': 1, '5': 7, '10': 'id'},
    const {'1': 'rx_time', '3': 7, '4': 1, '5': 7, '10': 'rxTime'},
    const {'1': 'rx_snr', '3': 8, '4': 1, '5': 2, '10': 'rxSnr'},
    const {'1': 'hop_limit', '3': 10, '4': 1, '5': 13, '10': 'hopLimit'},
    const {'1': 'want_ack', '3': 11, '4': 1, '5': 8, '10': 'wantAck'},
    const {'1': 'priority', '3': 12, '4': 1, '5': 14, '6': '.MeshPacket.Priority', '10': 'priority'},
  ],
  '4': const [MeshPacket_Priority$json],
  '8': const [
    const {'1': 'payloadVariant'},
  ],
};

@$core.Deprecated('Use meshPacketDescriptor instead')
const MeshPacket_Priority$json = const {
  '1': 'Priority',
  '2': const [
    const {'1': 'UNSET', '2': 0},
    const {'1': 'MIN', '2': 1},
    const {'1': 'BACKGROUND', '2': 10},
    const {'1': 'DEFAULT', '2': 64},
    const {'1': 'RELIABLE', '2': 70},
    const {'1': 'ACK', '2': 120},
    const {'1': 'MAX', '2': 127},
  ],
};

/// Descriptor for `MeshPacket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List meshPacketDescriptor = $convert.base64Decode('CgpNZXNoUGFja2V0EhIKBGZyb20YASABKAdSBGZyb20SDgoCdG8YAiABKAdSAnRvEhgKB2NoYW5uZWwYAyABKA1SB2NoYW5uZWwSIQoHZGVjb2RlZBgEIAEoCzIFLkRhdGFIAFIHZGVjb2RlZBIeCgllbmNyeXB0ZWQYBSABKAxIAFIJZW5jcnlwdGVkEg4KAmlkGAYgASgHUgJpZBIXCgdyeF90aW1lGAcgASgHUgZyeFRpbWUSFQoGcnhfc25yGAggASgCUgVyeFNuchIbCglob3BfbGltaXQYCiABKA1SCGhvcExpbWl0EhkKCHdhbnRfYWNrGAsgASgIUgd3YW50QWNrEjAKCHByaW9yaXR5GAwgASgOMhQuTWVzaFBhY2tldC5Qcmlvcml0eVIIcHJpb3JpdHkiWwoIUHJpb3JpdHkSCQoFVU5TRVQQABIHCgNNSU4QARIOCgpCQUNLR1JPVU5EEAoSCwoHREVGQVVMVBBAEgwKCFJFTElBQkxFEEYSBwoDQUNLEHgSBwoDTUFYEH9CEAoOcGF5bG9hZFZhcmlhbnQ=');
@$core.Deprecated('Use nodeInfoDescriptor instead')
const NodeInfo$json = const {
  '1': 'NodeInfo',
  '2': const [
    const {'1': 'num', '3': 1, '4': 1, '5': 13, '10': 'num'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.User', '10': 'user'},
    const {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
    const {'1': 'snr', '3': 7, '4': 1, '5': 2, '10': 'snr'},
  ],
};

/// Descriptor for `NodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeInfoDescriptor = $convert.base64Decode('CghOb2RlSW5mbxIQCgNudW0YASABKA1SA251bRIZCgR1c2VyGAIgASgLMgUuVXNlclIEdXNlchIlCghwb3NpdGlvbhgDIAEoCzIJLlBvc2l0aW9uUghwb3NpdGlvbhIQCgNzbnIYByABKAJSA3Nucg==');
@$core.Deprecated('Use myNodeInfoDescriptor instead')
const MyNodeInfo$json = const {
  '1': 'MyNodeInfo',
  '2': const [
    const {'1': 'my_node_num', '3': 1, '4': 1, '5': 13, '10': 'myNodeNum'},
    const {'1': 'has_gps', '3': 2, '4': 1, '5': 8, '10': 'hasGps'},
    const {'1': 'num_bands', '3': 3, '4': 1, '5': 13, '10': 'numBands'},
    const {'1': 'max_channels', '3': 15, '4': 1, '5': 13, '10': 'maxChannels'},
    const {
      '1': 'region',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'region',
    },
    const {
      '1': 'hw_model_deprecated',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'hwModelDeprecated',
    },
    const {'1': 'firmware_version', '3': 6, '4': 1, '5': 9, '10': 'firmwareVersion'},
    const {'1': 'error_code', '3': 7, '4': 1, '5': 14, '6': '.CriticalErrorCode', '10': 'errorCode'},
    const {'1': 'error_address', '3': 8, '4': 1, '5': 13, '10': 'errorAddress'},
    const {'1': 'error_count', '3': 9, '4': 1, '5': 13, '10': 'errorCount'},
    const {'1': 'message_timeout_msec', '3': 13, '4': 1, '5': 13, '10': 'messageTimeoutMsec'},
    const {'1': 'min_app_version', '3': 14, '4': 1, '5': 13, '10': 'minAppVersion'},
  ],
};

/// Descriptor for `MyNodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myNodeInfoDescriptor = $convert.base64Decode('CgpNeU5vZGVJbmZvEh4KC215X25vZGVfbnVtGAEgASgNUglteU5vZGVOdW0SFwoHaGFzX2dwcxgCIAEoCFIGaGFzR3BzEhsKCW51bV9iYW5kcxgDIAEoDVIIbnVtQmFuZHMSIQoMbWF4X2NoYW5uZWxzGA8gASgNUgttYXhDaGFubmVscxIaCgZyZWdpb24YBCABKAlCAhgBUgZyZWdpb24SMgoTaHdfbW9kZWxfZGVwcmVjYXRlZBgFIAEoCUICGAFSEWh3TW9kZWxEZXByZWNhdGVkEikKEGZpcm13YXJlX3ZlcnNpb24YBiABKAlSD2Zpcm13YXJlVmVyc2lvbhIxCgplcnJvcl9jb2RlGAcgASgOMhIuQ3JpdGljYWxFcnJvckNvZGVSCWVycm9yQ29kZRIjCg1lcnJvcl9hZGRyZXNzGAggASgNUgxlcnJvckFkZHJlc3MSHwoLZXJyb3JfY291bnQYCSABKA1SCmVycm9yQ291bnQSMAoUbWVzc2FnZV90aW1lb3V0X21zZWMYDSABKA1SEm1lc3NhZ2VUaW1lb3V0TXNlYxImCg9taW5fYXBwX3ZlcnNpb24YDiABKA1SDW1pbkFwcFZlcnNpb24=');
@$core.Deprecated('Use logRecordDescriptor instead')
const LogRecord$json = const {
  '1': 'LogRecord',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'time', '3': 2, '4': 1, '5': 7, '10': 'time'},
    const {'1': 'source', '3': 3, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'level', '3': 4, '4': 1, '5': 14, '6': '.LogRecord.Level', '10': 'level'},
  ],
  '4': const [LogRecord_Level$json],
};

@$core.Deprecated('Use logRecordDescriptor instead')
const LogRecord_Level$json = const {
  '1': 'Level',
  '2': const [
    const {'1': 'UNSET', '2': 0},
    const {'1': 'CRITICAL', '2': 50},
    const {'1': 'ERROR', '2': 40},
    const {'1': 'WARNING', '2': 30},
    const {'1': 'INFO', '2': 20},
    const {'1': 'DEBUG', '2': 10},
    const {'1': 'TRACE', '2': 5},
  ],
};

/// Descriptor for `LogRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logRecordDescriptor = $convert.base64Decode('CglMb2dSZWNvcmQSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRISCgR0aW1lGAIgASgHUgR0aW1lEhYKBnNvdXJjZRgDIAEoCVIGc291cmNlEiYKBWxldmVsGAQgASgOMhAuTG9nUmVjb3JkLkxldmVsUgVsZXZlbCJYCgVMZXZlbBIJCgVVTlNFVBAAEgwKCENSSVRJQ0FMEDISCQoFRVJST1IQKBILCgdXQVJOSU5HEB4SCAoESU5GTxAUEgkKBURFQlVHEAoSCQoFVFJBQ0UQBQ==');
@$core.Deprecated('Use fromRadioDescriptor instead')
const FromRadio$json = const {
  '1': 'FromRadio',
  '2': const [
    const {'1': 'num', '3': 1, '4': 1, '5': 13, '10': 'num'},
    const {'1': 'packet', '3': 11, '4': 1, '5': 11, '6': '.MeshPacket', '9': 0, '10': 'packet'},
    const {'1': 'my_info', '3': 3, '4': 1, '5': 11, '6': '.MyNodeInfo', '9': 0, '10': 'myInfo'},
    const {'1': 'node_info', '3': 4, '4': 1, '5': 11, '6': '.NodeInfo', '9': 0, '10': 'nodeInfo'},
    const {'1': 'log_record', '3': 7, '4': 1, '5': 11, '6': '.LogRecord', '9': 0, '10': 'logRecord'},
    const {'1': 'config_complete_id', '3': 8, '4': 1, '5': 13, '9': 0, '10': 'configCompleteId'},
    const {'1': 'rebooted', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'rebooted'},
  ],
  '8': const [
    const {'1': 'payloadVariant'},
  ],
  '9': const [
    const {'1': 2, '2': 3},
    const {'1': 6, '2': 7},
  ],
};

/// Descriptor for `FromRadio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fromRadioDescriptor = $convert.base64Decode('CglGcm9tUmFkaW8SEAoDbnVtGAEgASgNUgNudW0SJQoGcGFja2V0GAsgASgLMgsuTWVzaFBhY2tldEgAUgZwYWNrZXQSJgoHbXlfaW5mbxgDIAEoCzILLk15Tm9kZUluZm9IAFIGbXlJbmZvEigKCW5vZGVfaW5mbxgEIAEoCzIJLk5vZGVJbmZvSABSCG5vZGVJbmZvEisKCmxvZ19yZWNvcmQYByABKAsyCi5Mb2dSZWNvcmRIAFIJbG9nUmVjb3JkEi4KEmNvbmZpZ19jb21wbGV0ZV9pZBgIIAEoDUgAUhBjb25maWdDb21wbGV0ZUlkEhwKCHJlYm9vdGVkGAkgASgISABSCHJlYm9vdGVkQhAKDnBheWxvYWRWYXJpYW50SgQIAhADSgQIBhAH');
@$core.Deprecated('Use toRadioDescriptor instead')
const ToRadio$json = const {
  '1': 'ToRadio',
  '2': const [
    const {'1': 'packet', '3': 2, '4': 1, '5': 11, '6': '.MeshPacket', '9': 0, '10': 'packet'},
    const {'1': 'want_config_id', '3': 100, '4': 1, '5': 13, '9': 0, '10': 'wantConfigId'},
  ],
  '8': const [
    const {'1': 'payloadVariant'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
    const {'1': 101, '2': 102},
    const {'1': 102, '2': 103},
    const {'1': 103, '2': 104},
  ],
};

/// Descriptor for `ToRadio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toRadioDescriptor = $convert.base64Decode('CgdUb1JhZGlvEiUKBnBhY2tldBgCIAEoCzILLk1lc2hQYWNrZXRIAFIGcGFja2V0EiYKDndhbnRfY29uZmlnX2lkGGQgASgNSABSDHdhbnRDb25maWdJZEIQCg5wYXlsb2FkVmFyaWFudEoECAEQAkoECGUQZkoECGYQZ0oECGcQaA==');
