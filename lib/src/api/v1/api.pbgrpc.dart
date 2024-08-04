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

import 'auth.pb.dart' as $0;
import 'base.pb.dart' as $1;
import 'tmdb.pb.dart' as $2;
import 'wplay.pb.dart' as $3;

export 'api.pb.dart';

@$pb.GrpcServiceName('wowtv.Api')
class ApiClient extends $grpc.Client {
  static final _$userMe = $grpc.ClientMethod<$0.UserMeReq, $0.UserMeRes>(
      '/wowtv.Api/UserMe',
      ($0.UserMeReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserMeRes.fromBuffer(value));
  static final _$userToken = $grpc.ClientMethod<$0.UserTokenReq, $0.UserTokenRes>(
      '/wowtv.Api/UserToken',
      ($0.UserTokenReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserTokenRes.fromBuffer(value));
  static final _$appInfo = $grpc.ClientMethod<$1.AppInfoReq, $1.AppInfoRes>(
      '/wowtv.Api/AppInfo',
      ($1.AppInfoReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AppInfoRes.fromBuffer(value));
  static final _$tmdbMovieUpsert = $grpc.ClientMethod<$2.TmdbMovieUpsertReq, $2.TmdbMovieUpsertRes>(
      '/wowtv.Api/TmdbMovieUpsert',
      ($2.TmdbMovieUpsertReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TmdbMovieUpsertRes.fromBuffer(value));
  static final _$tmdbSerieUpsert = $grpc.ClientMethod<$2.TmdbSerieUpsertReq, $2.TmdbSerieUpsertRes>(
      '/wowtv.Api/TmdbSerieUpsert',
      ($2.TmdbSerieUpsertReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TmdbSerieUpsertRes.fromBuffer(value));
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

  ApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserMeRes> userMe($0.UserMeReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userMe, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserTokenRes> userToken($0.UserTokenReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppInfoRes> appInfo($1.AppInfoReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.TmdbMovieUpsertRes> tmdbMovieUpsert($2.TmdbMovieUpsertReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tmdbMovieUpsert, request, options: options);
  }

  $grpc.ResponseFuture<$2.TmdbSerieUpsertRes> tmdbSerieUpsert($2.TmdbSerieUpsertReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tmdbSerieUpsert, request, options: options);
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
}

@$pb.GrpcServiceName('wowtv.Api')
abstract class ApiServiceBase extends $grpc.Service {
  $core.String get $name => 'wowtv.Api';

  ApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserMeReq, $0.UserMeRes>(
        'UserMe',
        userMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserMeReq.fromBuffer(value),
        ($0.UserMeRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserTokenReq, $0.UserTokenRes>(
        'UserToken',
        userToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserTokenReq.fromBuffer(value),
        ($0.UserTokenRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AppInfoReq, $1.AppInfoRes>(
        'AppInfo',
        appInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AppInfoReq.fromBuffer(value),
        ($1.AppInfoRes value) => value.writeToBuffer()));
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
  }

  $async.Future<$0.UserMeRes> userMe_Pre($grpc.ServiceCall call, $async.Future<$0.UserMeReq> request) async {
    return userMe(call, await request);
  }

  $async.Future<$0.UserTokenRes> userToken_Pre($grpc.ServiceCall call, $async.Future<$0.UserTokenReq> request) async {
    return userToken(call, await request);
  }

  $async.Future<$1.AppInfoRes> appInfo_Pre($grpc.ServiceCall call, $async.Future<$1.AppInfoReq> request) async {
    return appInfo(call, await request);
  }

  $async.Future<$2.TmdbMovieUpsertRes> tmdbMovieUpsert_Pre($grpc.ServiceCall call, $async.Future<$2.TmdbMovieUpsertReq> request) async {
    return tmdbMovieUpsert(call, await request);
  }

  $async.Future<$2.TmdbSerieUpsertRes> tmdbSerieUpsert_Pre($grpc.ServiceCall call, $async.Future<$2.TmdbSerieUpsertReq> request) async {
    return tmdbSerieUpsert(call, await request);
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

  $async.Future<$0.UserMeRes> userMe($grpc.ServiceCall call, $0.UserMeReq request);
  $async.Future<$0.UserTokenRes> userToken($grpc.ServiceCall call, $0.UserTokenReq request);
  $async.Future<$1.AppInfoRes> appInfo($grpc.ServiceCall call, $1.AppInfoReq request);
  $async.Future<$2.TmdbMovieUpsertRes> tmdbMovieUpsert($grpc.ServiceCall call, $2.TmdbMovieUpsertReq request);
  $async.Future<$2.TmdbSerieUpsertRes> tmdbSerieUpsert($grpc.ServiceCall call, $2.TmdbSerieUpsertReq request);
  $async.Future<$3.TvFilmListAllRes> tvFilmListAll($grpc.ServiceCall call, $3.TvFilmListAllReq request);
  $async.Future<$3.TvFilmMainRandomRes> tvFilmMainRandom($grpc.ServiceCall call, $3.TvFilmMainRandomReq request);
  $async.Future<$3.TvFilmPopularOfDayListAllRes> tvFilmPopularOfDayListAll($grpc.ServiceCall call, $3.TvFilmPopularOfDayListAllReq request);
}
