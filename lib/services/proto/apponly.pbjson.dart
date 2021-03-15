///
//  Generated code. Do not modify.
//  source: apponly.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use serviceEnvelopeDescriptor instead')
const ServiceEnvelope$json = const {
  '1': 'ServiceEnvelope',
  '2': const [
    const {'1': 'packet', '3': 1, '4': 1, '5': 11, '6': '.MeshPacket', '10': 'packet'},
    const {'1': 'channel_id', '3': 2, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'gateway_id', '3': 3, '4': 1, '5': 9, '10': 'gatewayId'},
  ],
};

/// Descriptor for `ServiceEnvelope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceEnvelopeDescriptor = $convert.base64Decode('Cg9TZXJ2aWNlRW52ZWxvcGUSIwoGcGFja2V0GAEgASgLMgsuTWVzaFBhY2tldFIGcGFja2V0Eh0KCmNoYW5uZWxfaWQYAiABKAlSCWNoYW5uZWxJZBIdCgpnYXRld2F5X2lkGAMgASgJUglnYXRld2F5SWQ=');
@$core.Deprecated('Use channelSetDescriptor instead')
const ChannelSet$json = const {
  '1': 'ChannelSet',
  '2': const [
    const {'1': 'settings', '3': 1, '4': 3, '5': 11, '6': '.ChannelSettings', '10': 'settings'},
  ],
};

/// Descriptor for `ChannelSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelSetDescriptor = $convert.base64Decode('CgpDaGFubmVsU2V0EiwKCHNldHRpbmdzGAEgAygLMhAuQ2hhbm5lbFNldHRpbmdzUghzZXR0aW5ncw==');
