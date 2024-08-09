//
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pb.dart' as $1;
import 'base.pb.dart' as $0;
import 'tmdb.pb.dart' as $2;
import 'wplay.pb.dart' as $3;

export 'api.pb.dart';

@$pb.GrpcServiceName('wowtv.Api')
class ApiClient extends $grpc.Client {
  static final _$appInfo = $grpc.ClientMethod<$0.AppInfoReq, $0.AppInfoRes>(
      '/wowtv.Api/AppInfo',
      ($0.AppInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppInfoRes.fromBuffer(value));
  static final _$userMe = $grpc.ClientMethod<$1.UserMeReq, $1.UserMeRes>(
      '/wowtv.Api/UserMe',
      ($1.UserMeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserMeRes.fromBuffer(value));
  static final _$userToken = $grpc.ClientMethod<$1.UserTokenReq, $1.UserTokenRes>(
      '/wowtv.Api/UserToken',
      ($1.UserTokenReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserTokenRes.fromBuffer(value));
  static final _$tmdbMovieUpsert = $grpc.ClientMethod<$2.TmdbMovieUpsertReq, $2.TmdbMovieUpsertRes>(
      '/wowtv.Api/TmdbMovieUpsert',
      ($2.TmdbMovieUpsertReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TmdbMovieUpsertRes.fromBuffer(value));
  static final _$tmdbSerieUpsert = $grpc.ClientMethod<$2.TmdbSerieUpsertReq, $2.TmdbSerieUpsertRes>(
      '/wowtv.Api/TmdbSerieUpsert',
      ($2.TmdbSerieUpsertReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TmdbSerieUpsertRes.fromBuffer(value));
  static final _$tvFilmDetail = $grpc.ClientMethod<$3.TvFilmDetailReq, $3.TvFilmDetailRes>(
      '/wowtv.Api/TvFilmDetail',
      ($3.TvFilmDetailReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmDetailRes.fromBuffer(value));
  static final _$tvFilmListAll = $grpc.ClientMethod<$3.TvFilmListAllReq, $3.TvFilmListAllRes>(
      '/wowtv.Api/TvFilmListAll',
      ($3.TvFilmListAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmListAllRes.fromBuffer(value));
  static final _$tvFilmMainRandom = $grpc.ClientMethod<$3.TvFilmMainRandomReq, $3.TvFilmMainRandomRes>(
      '/wowtv.Api/TvFilmMainRandom',
      ($3.TvFilmMainRandomReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmMainRandomRes.fromBuffer(value));
  static final _$tvFilmPopularOfDayListAll = $grpc.ClientMethod<$3.TvFilmPopularOfDayListAllReq, $3.TvFilmPopularOfDayListAllRes>(
      '/wowtv.Api/TvFilmPopularOfDayListAll',
      ($3.TvFilmPopularOfDayListAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmPopularOfDayListAllRes.fromBuffer(value));
  static final _$tvFilmCastListAll = $grpc.ClientMethod<$3.TvFilmCastListAllReq, $3.TvFilmCastListAllRes>(
      '/wowtv.Api/TvFilmCastListAll',
      ($3.TvFilmCastListAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmCastListAllRes.fromBuffer(value));
  static final _$tvFilmCrewListAll = $grpc.ClientMethod<$3.TvFilmCrewListAllReq, $3.TvFilmCrewListAllRes>(
      '/wowtv.Api/TvFilmCrewListAll',
      ($3.TvFilmCrewListAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmCrewListAllRes.fromBuffer(value));
  static final _$tvFilmImageListAll = $grpc.ClientMethod<$3.TvFilmImageListAllReq, $3.TvFilmImageListAllRes>(
      '/wowtv.Api/TvFilmImageListAll',
      ($3.TvFilmImageListAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmImageListAllRes.fromBuffer(value));
  static final _$tvFilmMediaListAll = $grpc.ClientMethod<$3.TvFilmMediaListAllReq, $3.TvFilmMediaListAllRes>(
      '/wowtv.Api/TvFilmMediaListAll',
      ($3.TvFilmMediaListAllReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TvFilmMediaListAllRes.fromBuffer(value));

  ApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AppInfoRes> appInfo($0.AppInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserMeRes> userMe($1.UserMeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userMe, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserTokenRes> userToken($1.UserTokenReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userToken, request, options: options);
  }

  $grpc.ResponseFuture<$2.TmdbMovieUpsertRes> tmdbMovieUpsert($2.TmdbMovieUpsertReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tmdbMovieUpsert, request, options: options);
  }

  $grpc.ResponseFuture<$2.TmdbSerieUpsertRes> tmdbSerieUpsert($2.TmdbSerieUpsertReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tmdbSerieUpsert, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmDetailRes> tvFilmDetail($3.TvFilmDetailReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmDetail, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmListAllRes> tvFilmListAll($3.TvFilmListAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmListAll, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmMainRandomRes> tvFilmMainRandom($3.TvFilmMainRandomReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmMainRandom, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmPopularOfDayListAllRes> tvFilmPopularOfDayListAll($3.TvFilmPopularOfDayListAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmPopularOfDayListAll, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmCastListAllRes> tvFilmCastListAll($3.TvFilmCastListAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmCastListAll, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmCrewListAllRes> tvFilmCrewListAll($3.TvFilmCrewListAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmCrewListAll, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmImageListAllRes> tvFilmImageListAll($3.TvFilmImageListAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmImageListAll, request, options: options);
  }

  $grpc.ResponseFuture<$3.TvFilmMediaListAllRes> tvFilmMediaListAll($3.TvFilmMediaListAllReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tvFilmMediaListAll, request, options: options);
  }
}

@$pb.GrpcServiceName('wowtv.Api')
abstract class ApiServiceBase extends $grpc.Service {
  $core.String get $name => 'wowtv.Api';

  ApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AppInfoReq, $0.AppInfoRes>(
        'AppInfo',
        appInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AppInfoReq.fromBuffer(value),
        ($0.AppInfoRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserMeReq, $1.UserMeRes>(
        'UserMe',
        userMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserMeReq.fromBuffer(value),
        ($1.UserMeRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserTokenReq, $1.UserTokenRes>(
        'UserToken',
        userToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserTokenReq.fromBuffer(value),
        ($1.UserTokenRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TmdbMovieUpsertReq, $2.TmdbMovieUpsertRes>(
        'TmdbMovieUpsert',
        tmdbMovieUpsert_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TmdbMovieUpsertReq.fromBuffer(value),
        ($2.TmdbMovieUpsertRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TmdbSerieUpsertReq, $2.TmdbSerieUpsertRes>(
        'TmdbSerieUpsert',
        tmdbSerieUpsert_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TmdbSerieUpsertReq.fromBuffer(value),
        ($2.TmdbSerieUpsertRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmDetailReq, $3.TvFilmDetailRes>(
        'TvFilmDetail',
        tvFilmDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmDetailReq.fromBuffer(value),
        ($3.TvFilmDetailRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmListAllReq, $3.TvFilmListAllRes>(
        'TvFilmListAll',
        tvFilmListAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmListAllReq.fromBuffer(value),
        ($3.TvFilmListAllRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmMainRandomReq, $3.TvFilmMainRandomRes>(
        'TvFilmMainRandom',
        tvFilmMainRandom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmMainRandomReq.fromBuffer(value),
        ($3.TvFilmMainRandomRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmPopularOfDayListAllReq, $3.TvFilmPopularOfDayListAllRes>(
        'TvFilmPopularOfDayListAll',
        tvFilmPopularOfDayListAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmPopularOfDayListAllReq.fromBuffer(value),
        ($3.TvFilmPopularOfDayListAllRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmCastListAllReq, $3.TvFilmCastListAllRes>(
        'TvFilmCastListAll',
        tvFilmCastListAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmCastListAllReq.fromBuffer(value),
        ($3.TvFilmCastListAllRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmCrewListAllReq, $3.TvFilmCrewListAllRes>(
        'TvFilmCrewListAll',
        tvFilmCrewListAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmCrewListAllReq.fromBuffer(value),
        ($3.TvFilmCrewListAllRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmImageListAllReq, $3.TvFilmImageListAllRes>(
        'TvFilmImageListAll',
        tvFilmImageListAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmImageListAllReq.fromBuffer(value),
        ($3.TvFilmImageListAllRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TvFilmMediaListAllReq, $3.TvFilmMediaListAllRes>(
        'TvFilmMediaListAll',
        tvFilmMediaListAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TvFilmMediaListAllReq.fromBuffer(value),
        ($3.TvFilmMediaListAllRes value) => value.writeToBuffer()));
  }

  $async.Future<$0.AppInfoRes> appInfo_Pre($grpc.ServiceCall call, $async.Future<$0.AppInfoReq> request) async {
    return appInfo(call, await request);
  }

  $async.Future<$1.UserMeRes> userMe_Pre($grpc.ServiceCall call, $async.Future<$1.UserMeReq> request) async {
    return userMe(call, await request);
  }

  $async.Future<$1.UserTokenRes> userToken_Pre($grpc.ServiceCall call, $async.Future<$1.UserTokenReq> request) async {
    return userToken(call, await request);
  }

  $async.Future<$2.TmdbMovieUpsertRes> tmdbMovieUpsert_Pre($grpc.ServiceCall call, $async.Future<$2.TmdbMovieUpsertReq> request) async {
    return tmdbMovieUpsert(call, await request);
  }

  $async.Future<$2.TmdbSerieUpsertRes> tmdbSerieUpsert_Pre($grpc.ServiceCall call, $async.Future<$2.TmdbSerieUpsertReq> request) async {
    return tmdbSerieUpsert(call, await request);
  }

  $async.Future<$3.TvFilmDetailRes> tvFilmDetail_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmDetailReq> request) async {
    return tvFilmDetail(call, await request);
  }

  $async.Future<$3.TvFilmListAllRes> tvFilmListAll_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmListAllReq> request) async {
    return tvFilmListAll(call, await request);
  }

  $async.Future<$3.TvFilmMainRandomRes> tvFilmMainRandom_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmMainRandomReq> request) async {
    return tvFilmMainRandom(call, await request);
  }

  $async.Future<$3.TvFilmPopularOfDayListAllRes> tvFilmPopularOfDayListAll_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmPopularOfDayListAllReq> request) async {
    return tvFilmPopularOfDayListAll(call, await request);
  }

  $async.Future<$3.TvFilmCastListAllRes> tvFilmCastListAll_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmCastListAllReq> request) async {
    return tvFilmCastListAll(call, await request);
  }

  $async.Future<$3.TvFilmCrewListAllRes> tvFilmCrewListAll_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmCrewListAllReq> request) async {
    return tvFilmCrewListAll(call, await request);
  }

  $async.Future<$3.TvFilmImageListAllRes> tvFilmImageListAll_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmImageListAllReq> request) async {
    return tvFilmImageListAll(call, await request);
  }

  $async.Future<$3.TvFilmMediaListAllRes> tvFilmMediaListAll_Pre($grpc.ServiceCall call, $async.Future<$3.TvFilmMediaListAllReq> request) async {
    return tvFilmMediaListAll(call, await request);
  }

  $async.Future<$0.AppInfoRes> appInfo($grpc.ServiceCall call, $0.AppInfoReq request);
  $async.Future<$1.UserMeRes> userMe($grpc.ServiceCall call, $1.UserMeReq request);
  $async.Future<$1.UserTokenRes> userToken($grpc.ServiceCall call, $1.UserTokenReq request);
  $async.Future<$2.TmdbMovieUpsertRes> tmdbMovieUpsert($grpc.ServiceCall call, $2.TmdbMovieUpsertReq request);
  $async.Future<$2.TmdbSerieUpsertRes> tmdbSerieUpsert($grpc.ServiceCall call, $2.TmdbSerieUpsertReq request);
  $async.Future<$3.TvFilmDetailRes> tvFilmDetail($grpc.ServiceCall call, $3.TvFilmDetailReq request);
  $async.Future<$3.TvFilmListAllRes> tvFilmListAll($grpc.ServiceCall call, $3.TvFilmListAllReq request);
  $async.Future<$3.TvFilmMainRandomRes> tvFilmMainRandom($grpc.ServiceCall call, $3.TvFilmMainRandomReq request);
  $async.Future<$3.TvFilmPopularOfDayListAllRes> tvFilmPopularOfDayListAll($grpc.ServiceCall call, $3.TvFilmPopularOfDayListAllReq request);
  $async.Future<$3.TvFilmCastListAllRes> tvFilmCastListAll($grpc.ServiceCall call, $3.TvFilmCastListAllReq request);
  $async.Future<$3.TvFilmCrewListAllRes> tvFilmCrewListAll($grpc.ServiceCall call, $3.TvFilmCrewListAllReq request);
  $async.Future<$3.TvFilmImageListAllRes> tvFilmImageListAll($grpc.ServiceCall call, $3.TvFilmImageListAllReq request);
  $async.Future<$3.TvFilmMediaListAllRes> tvFilmMediaListAll($grpc.ServiceCall call, $3.TvFilmMediaListAllReq request);
}
