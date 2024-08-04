//
//  Generated code. Do not modify.
//  source: base.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AppInfo extends $pb.GeneratedMessage {
  factory AppInfo({
    $core.String? imurl,
    $core.String? vidurl,
    $core.String? version,
    $core.bool? showReview,
  }) {
    final $result = create();
    if (imurl != null) {
      $result.imurl = imurl;
    }
    if (vidurl != null) {
      $result.vidurl = vidurl;
    }
    if (version != null) {
      $result.version = version;
    }
    if (showReview != null) {
      $result.showReview = showReview;
    }
    return $result;
  }
  AppInfo._() : super();
  factory AppInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imurl')
    ..aOS(2, _omitFieldNames ? '' : 'vidurl')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOB(4, _omitFieldNames ? '' : 'showReview', protoName: 'showReview')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppInfo clone() => AppInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppInfo copyWith(void Function(AppInfo) updates) => super.copyWith((message) => updates(message as AppInfo)) as AppInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfo create() => AppInfo._();
  AppInfo createEmptyInstance() => create();
  static $pb.PbList<AppInfo> createRepeated() => $pb.PbList<AppInfo>();
  @$core.pragma('dart2js:noInline')
  static AppInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfo>(create);
  static AppInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imurl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imurl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImurl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImurl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get vidurl => $_getSZ(1);
  @$pb.TagNumber(2)
  set vidurl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVidurl() => $_has(1);
  @$pb.TagNumber(2)
  void clearVidurl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get showReview => $_getBF(3);
  @$pb.TagNumber(4)
  set showReview($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShowReview() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowReview() => clearField(4);
}

class AppInfoReq extends $pb.GeneratedMessage {
  factory AppInfoReq() => create();
  AppInfoReq._() : super();
  factory AppInfoReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppInfoReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppInfoReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppInfoReq clone() => AppInfoReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppInfoReq copyWith(void Function(AppInfoReq) updates) => super.copyWith((message) => updates(message as AppInfoReq)) as AppInfoReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfoReq create() => AppInfoReq._();
  AppInfoReq createEmptyInstance() => create();
  static $pb.PbList<AppInfoReq> createRepeated() => $pb.PbList<AppInfoReq>();
  @$core.pragma('dart2js:noInline')
  static AppInfoReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfoReq>(create);
  static AppInfoReq? _defaultInstance;
}

class AppInfoRes extends $pb.GeneratedMessage {
  factory AppInfoRes({
    AppInfo? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  AppInfoRes._() : super();
  factory AppInfoRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppInfoRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppInfoRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOM<AppInfo>(1, _omitFieldNames ? '' : 'result', subBuilder: AppInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppInfoRes clone() => AppInfoRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppInfoRes copyWith(void Function(AppInfoRes) updates) => super.copyWith((message) => updates(message as AppInfoRes)) as AppInfoRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfoRes create() => AppInfoRes._();
  AppInfoRes createEmptyInstance() => create();
  static $pb.PbList<AppInfoRes> createRepeated() => $pb.PbList<AppInfoRes>();
  @$core.pragma('dart2js:noInline')
  static AppInfoRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfoRes>(create);
  static AppInfoRes? _defaultInstance;

  @$pb.TagNumber(1)
  AppInfo get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(AppInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  AppInfo ensureResult() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
