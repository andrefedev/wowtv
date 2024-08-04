//
//  Generated code. Do not modify.
//  source: base.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo$json = {
  '1': 'AppInfo',
  '2': [
    {'1': 'imurl', '3': 1, '4': 1, '5': 9, '10': 'imurl'},
    {'1': 'vidurl', '3': 2, '4': 1, '5': 9, '10': 'vidurl'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {'1': 'showReview', '3': 4, '4': 1, '5': 8, '10': 'showReview'},
  ],
};

/// Descriptor for `AppInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDescriptor = $convert.base64Decode(
    'CgdBcHBJbmZvEhQKBWltdXJsGAEgASgJUgVpbXVybBIWCgZ2aWR1cmwYAiABKAlSBnZpZHVybB'
    'IYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEh4KCnNob3dSZXZpZXcYBCABKAhSCnNob3dSZXZp'
    'ZXc=');

@$core.Deprecated('Use appInfoReqDescriptor instead')
const AppInfoReq$json = {
  '1': 'AppInfoReq',
};

/// Descriptor for `AppInfoReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoReqDescriptor = $convert.base64Decode(
    'CgpBcHBJbmZvUmVx');

@$core.Deprecated('Use appInfoResDescriptor instead')
const AppInfoRes$json = {
  '1': 'AppInfoRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.wowtv.AppInfo', '10': 'result'},
  ],
};

/// Descriptor for `AppInfoRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoResDescriptor = $convert.base64Decode(
    'CgpBcHBJbmZvUmVzEiYKBnJlc3VsdBgBIAEoCzIOLndvd3R2LkFwcEluZm9SBnJlc3VsdA==');

