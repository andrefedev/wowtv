//
//  Generated code. Do not modify.
//  source: tmdb.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TmdbMovieUpsertReq extends $pb.GeneratedMessage {
  factory TmdbMovieUpsertReq({
    $core.int? tmdb,
  }) {
    final $result = create();
    if (tmdb != null) {
      $result.tmdb = tmdb;
    }
    return $result;
  }
  TmdbMovieUpsertReq._() : super();
  factory TmdbMovieUpsertReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TmdbMovieUpsertReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TmdbMovieUpsertReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'tmdb', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TmdbMovieUpsertReq clone() => TmdbMovieUpsertReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TmdbMovieUpsertReq copyWith(void Function(TmdbMovieUpsertReq) updates) => super.copyWith((message) => updates(message as TmdbMovieUpsertReq)) as TmdbMovieUpsertReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TmdbMovieUpsertReq create() => TmdbMovieUpsertReq._();
  TmdbMovieUpsertReq createEmptyInstance() => create();
  static $pb.PbList<TmdbMovieUpsertReq> createRepeated() => $pb.PbList<TmdbMovieUpsertReq>();
  @$core.pragma('dart2js:noInline')
  static TmdbMovieUpsertReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TmdbMovieUpsertReq>(create);
  static TmdbMovieUpsertReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tmdb => $_getIZ(0);
  @$pb.TagNumber(1)
  set tmdb($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTmdb() => $_has(0);
  @$pb.TagNumber(1)
  void clearTmdb() => clearField(1);
}

class TmdbMovieUpsertRes extends $pb.GeneratedMessage {
  factory TmdbMovieUpsertRes({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  TmdbMovieUpsertRes._() : super();
  factory TmdbMovieUpsertRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TmdbMovieUpsertRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TmdbMovieUpsertRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TmdbMovieUpsertRes clone() => TmdbMovieUpsertRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TmdbMovieUpsertRes copyWith(void Function(TmdbMovieUpsertRes) updates) => super.copyWith((message) => updates(message as TmdbMovieUpsertRes)) as TmdbMovieUpsertRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TmdbMovieUpsertRes create() => TmdbMovieUpsertRes._();
  TmdbMovieUpsertRes createEmptyInstance() => create();
  static $pb.PbList<TmdbMovieUpsertRes> createRepeated() => $pb.PbList<TmdbMovieUpsertRes>();
  @$core.pragma('dart2js:noInline')
  static TmdbMovieUpsertRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TmdbMovieUpsertRes>(create);
  static TmdbMovieUpsertRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class TmdbSerieUpsertReq extends $pb.GeneratedMessage {
  factory TmdbSerieUpsertReq({
    $core.int? tmdb,
  }) {
    final $result = create();
    if (tmdb != null) {
      $result.tmdb = tmdb;
    }
    return $result;
  }
  TmdbSerieUpsertReq._() : super();
  factory TmdbSerieUpsertReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TmdbSerieUpsertReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TmdbSerieUpsertReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'tmdb', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TmdbSerieUpsertReq clone() => TmdbSerieUpsertReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TmdbSerieUpsertReq copyWith(void Function(TmdbSerieUpsertReq) updates) => super.copyWith((message) => updates(message as TmdbSerieUpsertReq)) as TmdbSerieUpsertReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TmdbSerieUpsertReq create() => TmdbSerieUpsertReq._();
  TmdbSerieUpsertReq createEmptyInstance() => create();
  static $pb.PbList<TmdbSerieUpsertReq> createRepeated() => $pb.PbList<TmdbSerieUpsertReq>();
  @$core.pragma('dart2js:noInline')
  static TmdbSerieUpsertReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TmdbSerieUpsertReq>(create);
  static TmdbSerieUpsertReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tmdb => $_getIZ(0);
  @$pb.TagNumber(1)
  set tmdb($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTmdb() => $_has(0);
  @$pb.TagNumber(1)
  void clearTmdb() => clearField(1);
}

class TmdbSerieUpsertRes extends $pb.GeneratedMessage {
  factory TmdbSerieUpsertRes({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  TmdbSerieUpsertRes._() : super();
  factory TmdbSerieUpsertRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TmdbSerieUpsertRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TmdbSerieUpsertRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TmdbSerieUpsertRes clone() => TmdbSerieUpsertRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TmdbSerieUpsertRes copyWith(void Function(TmdbSerieUpsertRes) updates) => super.copyWith((message) => updates(message as TmdbSerieUpsertRes)) as TmdbSerieUpsertRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TmdbSerieUpsertRes create() => TmdbSerieUpsertRes._();
  TmdbSerieUpsertRes createEmptyInstance() => create();
  static $pb.PbList<TmdbSerieUpsertRes> createRepeated() => $pb.PbList<TmdbSerieUpsertRes>();
  @$core.pragma('dart2js:noInline')
  static TmdbSerieUpsertRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TmdbSerieUpsertRes>(create);
  static TmdbSerieUpsertRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
