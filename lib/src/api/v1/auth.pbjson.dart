//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'idToken', '3': 2, '4': 1, '5': 9, '10': 'idToken'},
    {'1': 'isAdmin', '3': 3, '4': 1, '5': 8, '10': 'isAdmin'},
    {'1': 'isPrime', '3': 4, '4': 1, '5': 8, '10': 'isPrime'},
    {'1': 'isActive', '3': 5, '4': 1, '5': 8, '10': 'isActive'},
    {'1': 'lastLogin', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastLogin'},
    {'1': 'joinedDate', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'joinedDate'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhAKA3JlZhgBIAEoCVIDcmVmEhgKB2lkVG9rZW4YAiABKAlSB2lkVG9rZW4SGAoHaX'
    'NBZG1pbhgDIAEoCFIHaXNBZG1pbhIYCgdpc1ByaW1lGAQgASgIUgdpc1ByaW1lEhoKCGlzQWN0'
    'aXZlGAUgASgIUghpc0FjdGl2ZRI4CglsYXN0TG9naW4YBiABKAsyGi5nb29nbGUucHJvdG9idW'
    'YuVGltZXN0YW1wUglsYXN0TG9naW4SOgoKam9pbmVkRGF0ZRgHIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBSCmpvaW5lZERhdGU=');

@$core.Deprecated('Use userMeReqDescriptor instead')
const UserMeReq$json = {
  '1': 'UserMeReq',
};

/// Descriptor for `UserMeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userMeReqDescriptor = $convert.base64Decode(
    'CglVc2VyTWVSZXE=');

@$core.Deprecated('Use userMeResDescriptor instead')
const UserMeRes$json = {
  '1': 'UserMeRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.wowtv.User', '10': 'result'},
  ],
};

/// Descriptor for `UserMeRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userMeResDescriptor = $convert.base64Decode(
    'CglVc2VyTWVSZXMSIwoGcmVzdWx0GAEgASgLMgsud293dHYuVXNlclIGcmVzdWx0');

@$core.Deprecated('Use userTokenReqDescriptor instead')
const UserTokenReq$json = {
  '1': 'UserTokenReq',
};

/// Descriptor for `UserTokenReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userTokenReqDescriptor = $convert.base64Decode(
    'CgxVc2VyVG9rZW5SZXE=');

@$core.Deprecated('Use userTokenResDescriptor instead')
const UserTokenRes$json = {
  '1': 'UserTokenRes',
  '2': [
    {'1': 'idToken', '3': 1, '4': 1, '5': 9, '10': 'idToken'},
  ],
};

/// Descriptor for `UserTokenRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userTokenResDescriptor = $convert.base64Decode(
    'CgxVc2VyVG9rZW5SZXMSGAoHaWRUb2tlbhgBIAEoCVIHaWRUb2tlbg==');

