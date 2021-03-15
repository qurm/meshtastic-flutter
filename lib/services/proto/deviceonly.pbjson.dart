///
//  Generated code. Do not modify.
//  source: deviceonly.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use legacyRadioConfigDescriptor instead')
const LegacyRadioConfig$json = const {
  '1': 'LegacyRadioConfig',
  '2': const [
    const {'1': 'preferences', '3': 1, '4': 1, '5': 11, '6': '.LegacyRadioConfig.LegacyPreferences', '10': 'preferences'},
  ],
  '3': const [LegacyRadioConfig_LegacyPreferences$json],
};

@$core.Deprecated('Use legacyRadioConfigDescriptor instead')
const LegacyRadioConfig_LegacyPreferences$json = const {
  '1': 'LegacyPreferences',
  '2': const [
    const {'1': 'region', '3': 15, '4': 1, '5': 14, '6': '.RegionCode', '10': 'region'},
  ],
};

/// Descriptor for `LegacyRadioConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List legacyRadioConfigDescriptor = $convert.base64Decode('ChFMZWdhY3lSYWRpb0NvbmZpZxJGCgtwcmVmZXJlbmNlcxgBIAEoCzIkLkxlZ2FjeVJhZGlvQ29uZmlnLkxlZ2FjeVByZWZlcmVuY2VzUgtwcmVmZXJlbmNlcxo4ChFMZWdhY3lQcmVmZXJlbmNlcxIjCgZyZWdpb24YDyABKA4yCy5SZWdpb25Db2RlUgZyZWdpb24=');
@$core.Deprecated('Use deviceStateDescriptor instead')
const DeviceState$json = const {
  '1': 'DeviceState',
  '2': const [
    const {'1': 'legacyRadio', '3': 1, '4': 1, '5': 11, '6': '.LegacyRadioConfig', '10': 'legacyRadio'},
    const {'1': 'my_node', '3': 2, '4': 1, '5': 11, '6': '.MyNodeInfo', '10': 'myNode'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 11, '6': '.User', '10': 'owner'},
    const {'1': 'node_db', '3': 4, '4': 3, '5': 11, '6': '.NodeInfo', '10': 'nodeDb'},
    const {'1': 'receive_queue', '3': 5, '4': 3, '5': 11, '6': '.MeshPacket', '10': 'receiveQueue'},
    const {'1': 'version', '3': 8, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'rx_text_message', '3': 7, '4': 1, '5': 11, '6': '.MeshPacket', '10': 'rxTextMessage'},
    const {'1': 'no_save', '3': 9, '4': 1, '5': 8, '10': 'noSave'},
    const {'1': 'did_gps_reset', '3': 11, '4': 1, '5': 8, '10': 'didGpsReset'},
  ],
  '9': const [
    const {'1': 12, '2': 13},
  ],
};

/// Descriptor for `DeviceState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStateDescriptor = $convert.base64Decode('CgtEZXZpY2VTdGF0ZRI0CgtsZWdhY3lSYWRpbxgBIAEoCzISLkxlZ2FjeVJhZGlvQ29uZmlnUgtsZWdhY3lSYWRpbxIkCgdteV9ub2RlGAIgASgLMgsuTXlOb2RlSW5mb1IGbXlOb2RlEhsKBW93bmVyGAMgASgLMgUuVXNlclIFb3duZXISIgoHbm9kZV9kYhgEIAMoCzIJLk5vZGVJbmZvUgZub2RlRGISMAoNcmVjZWl2ZV9xdWV1ZRgFIAMoCzILLk1lc2hQYWNrZXRSDHJlY2VpdmVRdWV1ZRIYCgd2ZXJzaW9uGAggASgNUgd2ZXJzaW9uEjMKD3J4X3RleHRfbWVzc2FnZRgHIAEoCzILLk1lc2hQYWNrZXRSDXJ4VGV4dE1lc3NhZ2USFwoHbm9fc2F2ZRgJIAEoCFIGbm9TYXZlEiIKDWRpZF9ncHNfcmVzZXQYCyABKAhSC2RpZEdwc1Jlc2V0SgQIDBAN');
@$core.Deprecated('Use channelFileDescriptor instead')
const ChannelFile$json = const {
  '1': 'ChannelFile',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.Channel', '10': 'channels'},
  ],
};

/// Descriptor for `ChannelFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelFileDescriptor = $convert.base64Decode('CgtDaGFubmVsRmlsZRIkCghjaGFubmVscxgBIAMoCzIILkNoYW5uZWxSCGNoYW5uZWxz');
