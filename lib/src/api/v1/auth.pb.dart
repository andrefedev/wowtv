//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $4;

class User extends $pb.GeneratedMessage {
  factory User({
    $core.String? ref,
    $core.String? idToken,
    $core.bool? isAdmin,
    $core.bool? isPrime,
    $core.bool? isActive,
    $4.Timestamp? lastLogin,
    $4.Timestamp? joinedDate,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (idToken != null) {
      $result.idToken = idToken;
    }
    if (isAdmin != null) {
      $result.isAdmin = isAdmin;
    }
    if (isPrime != null) {
      $result.isPrime = isPrime;
    }
    if (isActive != null) {
      $result.isActive = isActive;
    }
    if (lastLogin != null) {
      $result.lastLogin = lastLogin;
    }
    if (joinedDate != null) {
      $result.joinedDate = joinedDate;
    }
    return $result;
  }
  User._() : super();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'User', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'idToken', protoName: 'idToken')
    ..aOB(3, _omitFieldNames ? '' : 'isAdmin', protoName: 'isAdmin')
    ..aOB(4, _omitFieldNames ? '' : 'isPrime', protoName: 'isPrime')
    ..aOB(5, _omitFieldNames ? '' : 'isActive', protoName: 'isActive')
    ..aOM<$4.Timestamp>(6, _omitFieldNames ? '' : 'lastLogin', protoName: 'lastLogin', subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(7, _omitFieldNames ? '' : 'joinedDate', protoName: 'joinedDate', subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set idToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isAdmin => $_getBF(2);
  @$pb.TagNumber(3)
  set isAdmin($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsAdmin() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAdmin() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isPrime => $_getBF(3);
  @$pb.TagNumber(4)
  set isPrime($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsPrime() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsPrime() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isActive => $_getBF(4);
  @$pb.TagNumber(5)
  set isActive($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsActive() => clearField(5);

  @$pb.TagNumber(6)
  $4.Timestamp get lastLogin => $_getN(5);
  @$pb.TagNumber(6)
  set lastLogin($4.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastLogin() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastLogin() => clearField(6);
  @$pb.TagNumber(6)
  $4.Timestamp ensureLastLogin() => $_ensure(5);

  @$pb.TagNumber(7)
  $4.Timestamp get joinedDate => $_getN(6);
  @$pb.TagNumber(7)
  set joinedDate($4.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasJoinedDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearJoinedDate() => clearField(7);
  @$pb.TagNumber(7)
  $4.Timestamp ensureJoinedDate() => $_ensure(6);
}

class UserMeReq extends $pb.GeneratedMessage {
  factory UserMeReq() => create();
  UserMeReq._() : super();
  factory UserMeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserMeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserMeReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserMeReq clone() => UserMeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserMeReq copyWith(void Function(UserMeReq) updates) => super.copyWith((message) => updates(message as UserMeReq)) as UserMeReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserMeReq create() => UserMeReq._();
  UserMeReq createEmptyInstance() => create();
  static $pb.PbList<UserMeReq> createRepeated() => $pb.PbList<UserMeReq>();
  @$core.pragma('dart2js:noInline')
  static UserMeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserMeReq>(create);
  static UserMeReq? _defaultInstance;
}

class UserMeRes extends $pb.GeneratedMessage {
  factory UserMeRes({
    User? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  UserMeRes._() : super();
  factory UserMeRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserMeRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserMeRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOM<User>(1, _omitFieldNames ? '' : 'result', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserMeRes clone() => UserMeRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserMeRes copyWith(void Function(UserMeRes) updates) => super.copyWith((message) => updates(message as UserMeRes)) as UserMeRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserMeRes create() => UserMeRes._();
  UserMeRes createEmptyInstance() => create();
  static $pb.PbList<UserMeRes> createRepeated() => $pb.PbList<UserMeRes>();
  @$core.pragma('dart2js:noInline')
  static UserMeRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserMeRes>(create);
  static UserMeRes? _defaultInstance;

  @$pb.TagNumber(1)
  User get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  User ensureResult() => $_ensure(0);
}

class UserTokenReq extends $pb.GeneratedMessage {
  factory UserTokenReq() => create();
  UserTokenReq._() : super();
  factory UserTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserTokenReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserTokenReq clone() => UserTokenReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserTokenReq copyWith(void Function(UserTokenReq) updates) => super.copyWith((message) => updates(message as UserTokenReq)) as UserTokenReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserTokenReq create() => UserTokenReq._();
  UserTokenReq createEmptyInstance() => create();
  static $pb.PbList<UserTokenReq> createRepeated() => $pb.PbList<UserTokenReq>();
  @$core.pragma('dart2js:noInline')
  static UserTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserTokenReq>(create);
  static UserTokenReq? _defaultInstance;
}

class UserTokenRes extends $pb.GeneratedMessage {
  factory UserTokenRes({
    $core.String? idToken,
  }) {
    final $result = create();
    if (idToken != null) {
      $result.idToken = idToken;
    }
    return $result;
  }
  UserTokenRes._() : super();
  factory UserTokenRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserTokenRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserTokenRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idToken', protoName: 'idToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserTokenRes clone() => UserTokenRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserTokenRes copyWith(void Function(UserTokenRes) updates) => super.copyWith((message) => updates(message as UserTokenRes)) as UserTokenRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserTokenRes create() => UserTokenRes._();
  UserTokenRes createEmptyInstance() => create();
  static $pb.PbList<UserTokenRes> createRepeated() => $pb.PbList<UserTokenRes>();
  @$core.pragma('dart2js:noInline')
  static UserTokenRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserTokenRes>(create);
  static UserTokenRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set idToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdToken() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
