///
//  Generated code. Do not modify.
//  source: admin.proto
//

// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use adminMessageDescriptor instead')
const AdminMessage$json = const {
  '1': 'AdminMessage',
  '2': const [
    const {'1': 'set_radio', '3': 1, '4': 1, '5': 11, '6': '.RadioConfig', '9': 0, '10': 'setRadio'},
    const {'1': 'set_owner', '3': 2, '4': 1, '5': 11, '6': '.User', '9': 0, '10': 'setOwner'},
    const {'1': 'set_channel', '3': 3, '4': 1, '5': 11, '6': '.Channel', '9': 0, '10': 'setChannel'},
    const {'1': 'get_radio_request', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'getRadioRequest'},
    const {'1': 'get_radio_response', '3': 5, '4': 1, '5': 11, '6': '.RadioConfig', '9': 0, '10': 'getRadioResponse'},
    const {'1': 'get_channel_request', '3': 6, '4': 1, '5': 13, '9': 0, '10': 'getChannelRequest'},
    const {'1': 'get_channel_response', '3': 7, '4': 1, '5': 11, '6': '.Channel', '9': 0, '10': 'getChannelResponse'},
    const {'1': 'confirm_set_channel', '3': 32, '4': 1, '5': 8, '9': 0, '10': 'confirmSetChannel'},
    const {'1': 'confirm_set_radio', '3': 33, '4': 1, '5': 8, '9': 0, '10': 'confirmSetRadio'},
  ],
  '8': const [
    const {'1': 'variant'},
  ],
};

/// Descriptor for `AdminMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminMessageDescriptor = $convert.base64Decode('CgxBZG1pbk1lc3NhZ2USKwoJc2V0X3JhZGlvGAEgASgLMgwuUmFkaW9Db25maWdIAFIIc2V0UmFkaW8SJAoJc2V0X293bmVyGAIgASgLMgUuVXNlckgAUghzZXRPd25lchIrCgtzZXRfY2hhbm5lbBgDIAEoCzIILkNoYW5uZWxIAFIKc2V0Q2hhbm5lbBIsChFnZXRfcmFkaW9fcmVxdWVzdBgEIAEoCEgAUg9nZXRSYWRpb1JlcXVlc3QSPAoSZ2V0X3JhZGlvX3Jlc3BvbnNlGAUgASgLMgwuUmFkaW9Db25maWdIAFIQZ2V0UmFkaW9SZXNwb25zZRIwChNnZXRfY2hhbm5lbF9yZXF1ZXN0GAYgASgNSABSEWdldENoYW5uZWxSZXF1ZXN0EjwKFGdldF9jaGFubmVsX3Jlc3BvbnNlGAcgASgLMgguQ2hhbm5lbEgAUhJnZXRDaGFubmVsUmVzcG9uc2USMAoTY29uZmlybV9zZXRfY2hhbm5lbBggIAEoCEgAUhFjb25maXJtU2V0Q2hhbm5lbBIsChFjb25maXJtX3NldF9yYWRpbxghIAEoCEgAUg9jb25maXJtU2V0UmFkaW9CCQoHdmFyaWFudA==');
