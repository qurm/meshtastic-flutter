///
//  Generated code. Do not modify.
//  source: channel.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use channelSettingsDescriptor instead')
const ChannelSettings$json = const {
  '1': 'ChannelSettings',
  '2': const [
    const {'1': 'tx_power', '3': 1, '4': 1, '5': 5, '10': 'txPower'},
    const {'1': 'modem_config', '3': 3, '4': 1, '5': 14, '6': '.ChannelSettings.ModemConfig', '10': 'modemConfig'},
    const {'1': 'bandwidth', '3': 6, '4': 1, '5': 13, '10': 'bandwidth'},
    const {'1': 'spread_factor', '3': 7, '4': 1, '5': 13, '10': 'spreadFactor'},
    const {'1': 'coding_rate', '3': 8, '4': 1, '5': 13, '10': 'codingRate'},
    const {'1': 'channel_num', '3': 9, '4': 1, '5': 13, '10': 'channelNum'},
    const {'1': 'psk', '3': 4, '4': 1, '5': 12, '10': 'psk'},
    const {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 10, '4': 1, '5': 7, '10': 'id'},
    const {'1': 'uplink_enabled', '3': 16, '4': 1, '5': 8, '10': 'uplinkEnabled'},
    const {'1': 'downlink_enabled', '3': 17, '4': 1, '5': 8, '10': 'downlinkEnabled'},
  ],
  '4': const [ChannelSettings_ModemConfig$json],
};

@$core.Deprecated('Use channelSettingsDescriptor instead')
const ChannelSettings_ModemConfig$json = const {
  '1': 'ModemConfig',
  '2': const [
    const {'1': 'Bw125Cr45Sf128', '2': 0},
    const {'1': 'Bw500Cr45Sf128', '2': 1},
    const {'1': 'Bw31_25Cr48Sf512', '2': 2},
    const {'1': 'Bw125Cr48Sf4096', '2': 3},
  ],
};

/// Descriptor for `ChannelSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSettingsDescriptor = $convert.base64Decode('Cg9DaGFubmVsU2V0dGluZ3MSGQoIdHhfcG93ZXIYASABKAVSB3R4UG93ZXISPwoMbW9kZW1fY29uZmlnGAMgASgOMhwuQ2hhbm5lbFNldHRpbmdzLk1vZGVtQ29uZmlnUgttb2RlbUNvbmZpZxIcCgliYW5kd2lkdGgYBiABKA1SCWJhbmR3aWR0aBIjCg1zcHJlYWRfZmFjdG9yGAcgASgNUgxzcHJlYWRGYWN0b3ISHwoLY29kaW5nX3JhdGUYCCABKA1SCmNvZGluZ1JhdGUSHwoLY2hhbm5lbF9udW0YCSABKA1SCmNoYW5uZWxOdW0SEAoDcHNrGAQgASgMUgNwc2sSEgoEbmFtZRgFIAEoCVIEbmFtZRIOCgJpZBgKIAEoB1ICaWQSJQoOdXBsaW5rX2VuYWJsZWQYECABKAhSDXVwbGlua0VuYWJsZWQSKQoQZG93bmxpbmtfZW5hYmxlZBgRIAEoCFIPZG93bmxpbmtFbmFibGVkImAKC01vZGVtQ29uZmlnEhIKDkJ3MTI1Q3I0NVNmMTI4EAASEgoOQnc1MDBDcjQ1U2YxMjgQARIUChBCdzMxXzI1Q3I0OFNmNTEyEAISEwoPQncxMjVDcjQ4U2Y0MDk2EAM=');
@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
    const {'1': 'settings', '3': 2, '4': 1, '5': 11, '6': '.ChannelSettings', '10': 'settings'},
    const {'1': 'role', '3': 3, '4': 1, '5': 14, '6': '.Channel.Role', '10': 'role'},
  ],
  '4': const [Channel_Role$json],
};

@$core.Deprecated('Use channelDescriptor instead')
const Channel_Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'DISABLED', '2': 0},
    const {'1': 'PRIMARY', '2': 1},
    const {'1': 'SECONDARY', '2': 2},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode('CgdDaGFubmVsEhQKBWluZGV4GAEgASgFUgVpbmRleBIsCghzZXR0aW5ncxgCIAEoCzIQLkNoYW5uZWxTZXR0aW5nc1IIc2V0dGluZ3MSIQoEcm9sZRgDIAEoDjINLkNoYW5uZWwuUm9sZVIEcm9sZSIwCgRSb2xlEgwKCERJU0FCTEVEEAASCwoHUFJJTUFSWRABEg0KCVNFQ09OREFSWRAC');
