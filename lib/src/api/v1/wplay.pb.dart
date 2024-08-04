//
//  Generated code. Do not modify.
//  source: wplay.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $4;
import 'wplay.pbenum.dart';

export 'wplay.pbenum.dart';

class Genre extends $pb.GeneratedMessage {
  factory Genre({
    $core.String? ref,
    $core.String? name,
    $core.String? display,
    $core.bool? forMovie,
    $core.bool? forSerie,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (name != null) {
      $result.name = name;
    }
    if (display != null) {
      $result.display = display;
    }
    if (forMovie != null) {
      $result.forMovie = forMovie;
    }
    if (forSerie != null) {
      $result.forSerie = forSerie;
    }
    return $result;
  }
  Genre._() : super();
  factory Genre.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Genre.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Genre', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'display')
    ..aOB(4, _omitFieldNames ? '' : 'forMovie', protoName: 'forMovie')
    ..aOB(5, _omitFieldNames ? '' : 'forSerie', protoName: 'forSerie')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Genre clone() => Genre()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Genre copyWith(void Function(Genre) updates) => super.copyWith((message) => updates(message as Genre)) as Genre;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Genre create() => Genre._();
  Genre createEmptyInstance() => create();
  static $pb.PbList<Genre> createRepeated() => $pb.PbList<Genre>();
  @$core.pragma('dart2js:noInline')
  static Genre getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Genre>(create);
  static Genre? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get display => $_getSZ(2);
  @$pb.TagNumber(3)
  set display($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplay() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get forMovie => $_getBF(3);
  @$pb.TagNumber(4)
  set forMovie($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasForMovie() => $_has(3);
  @$pb.TagNumber(4)
  void clearForMovie() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get forSerie => $_getBF(4);
  @$pb.TagNumber(5)
  set forSerie($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasForSerie() => $_has(4);
  @$pb.TagNumber(5)
  void clearForSerie() => clearField(5);
}

class People extends $pb.GeneratedMessage {
  factory People({
    $core.String? ref,
    $core.String? name,
    $core.String? profilePath1,
    $core.String? profilePath2,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (name != null) {
      $result.name = name;
    }
    if (profilePath1 != null) {
      $result.profilePath1 = profilePath1;
    }
    if (profilePath2 != null) {
      $result.profilePath2 = profilePath2;
    }
    return $result;
  }
  People._() : super();
  factory People.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory People.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'People', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'profilePath1', protoName: 'profilePath1')
    ..aOS(4, _omitFieldNames ? '' : 'profilePath2', protoName: 'profilePath2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  People clone() => People()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  People copyWith(void Function(People) updates) => super.copyWith((message) => updates(message as People)) as People;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static People create() => People._();
  People createEmptyInstance() => create();
  static $pb.PbList<People> createRepeated() => $pb.PbList<People>();
  @$core.pragma('dart2js:noInline')
  static People getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<People>(create);
  static People? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get profilePath1 => $_getSZ(2);
  @$pb.TagNumber(3)
  set profilePath1($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfilePath1() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePath1() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get profilePath2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set profilePath2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfilePath2() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfilePath2() => clearField(4);
}

class TvFilm extends $pb.GeneratedMessage {
  factory TvFilm({
    $core.String? ref,
    TvType? type,
    $core.int? tmdb,
    $core.String? name1,
    $core.String? name2,
    $core.Iterable<$core.String>? genres,
    $core.String? tagline,
    $core.int? runtime,
    $core.double? voteavg,
    $core.int? popular,
    $core.String? overview,
    $4.Timestamp? releaseDate,
    $4.Timestamp? createdDate,
    $core.String? posterPath1,
    $core.String? posterPath2,
    $core.String? backdpPath1,
    $core.String? backdpPath2,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (type != null) {
      $result.type = type;
    }
    if (tmdb != null) {
      $result.tmdb = tmdb;
    }
    if (name1 != null) {
      $result.name1 = name1;
    }
    if (name2 != null) {
      $result.name2 = name2;
    }
    if (genres != null) {
      $result.genres.addAll(genres);
    }
    if (tagline != null) {
      $result.tagline = tagline;
    }
    if (runtime != null) {
      $result.runtime = runtime;
    }
    if (voteavg != null) {
      $result.voteavg = voteavg;
    }
    if (popular != null) {
      $result.popular = popular;
    }
    if (overview != null) {
      $result.overview = overview;
    }
    if (releaseDate != null) {
      $result.releaseDate = releaseDate;
    }
    if (createdDate != null) {
      $result.createdDate = createdDate;
    }
    if (posterPath1 != null) {
      $result.posterPath1 = posterPath1;
    }
    if (posterPath2 != null) {
      $result.posterPath2 = posterPath2;
    }
    if (backdpPath1 != null) {
      $result.backdpPath1 = backdpPath1;
    }
    if (backdpPath2 != null) {
      $result.backdpPath2 = backdpPath2;
    }
    return $result;
  }
  TvFilm._() : super();
  factory TvFilm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilm', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..e<TvType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TvType.None, valueOf: TvType.valueOf, enumValues: TvType.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'tmdb', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'name1')
    ..aOS(5, _omitFieldNames ? '' : 'name2')
    ..pPS(6, _omitFieldNames ? '' : 'genres')
    ..aOS(7, _omitFieldNames ? '' : 'tagline')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'runtime', $pb.PbFieldType.O3)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'voteavg', $pb.PbFieldType.OD)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'popular', $pb.PbFieldType.O3)
    ..aOS(11, _omitFieldNames ? '' : 'overview')
    ..aOM<$4.Timestamp>(12, _omitFieldNames ? '' : 'releaseDate', protoName: 'releaseDate', subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(13, _omitFieldNames ? '' : 'createdDate', protoName: 'createdDate', subBuilder: $4.Timestamp.create)
    ..aOS(14, _omitFieldNames ? '' : 'posterPath1', protoName: 'posterPath1')
    ..aOS(15, _omitFieldNames ? '' : 'posterPath2', protoName: 'posterPath2')
    ..aOS(16, _omitFieldNames ? '' : 'backdpPath1', protoName: 'backdpPath1')
    ..aOS(17, _omitFieldNames ? '' : 'backdpPath2', protoName: 'backdpPath2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilm clone() => TvFilm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilm copyWith(void Function(TvFilm) updates) => super.copyWith((message) => updates(message as TvFilm)) as TvFilm;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilm create() => TvFilm._();
  TvFilm createEmptyInstance() => create();
  static $pb.PbList<TvFilm> createRepeated() => $pb.PbList<TvFilm>();
  @$core.pragma('dart2js:noInline')
  static TvFilm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilm>(create);
  static TvFilm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  TvType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(TvType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get tmdb => $_getIZ(2);
  @$pb.TagNumber(3)
  set tmdb($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTmdb() => $_has(2);
  @$pb.TagNumber(3)
  void clearTmdb() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set name1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName1() => $_has(3);
  @$pb.TagNumber(4)
  void clearName1() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set name2($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName2() => $_has(4);
  @$pb.TagNumber(5)
  void clearName2() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get genres => $_getList(5);

  @$pb.TagNumber(7)
  $core.String get tagline => $_getSZ(6);
  @$pb.TagNumber(7)
  set tagline($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTagline() => $_has(6);
  @$pb.TagNumber(7)
  void clearTagline() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get runtime => $_getIZ(7);
  @$pb.TagNumber(8)
  set runtime($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRuntime() => $_has(7);
  @$pb.TagNumber(8)
  void clearRuntime() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get voteavg => $_getN(8);
  @$pb.TagNumber(9)
  set voteavg($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVoteavg() => $_has(8);
  @$pb.TagNumber(9)
  void clearVoteavg() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get popular => $_getIZ(9);
  @$pb.TagNumber(10)
  set popular($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPopular() => $_has(9);
  @$pb.TagNumber(10)
  void clearPopular() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get overview => $_getSZ(10);
  @$pb.TagNumber(11)
  set overview($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOverview() => $_has(10);
  @$pb.TagNumber(11)
  void clearOverview() => clearField(11);

  @$pb.TagNumber(12)
  $4.Timestamp get releaseDate => $_getN(11);
  @$pb.TagNumber(12)
  set releaseDate($4.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasReleaseDate() => $_has(11);
  @$pb.TagNumber(12)
  void clearReleaseDate() => clearField(12);
  @$pb.TagNumber(12)
  $4.Timestamp ensureReleaseDate() => $_ensure(11);

  @$pb.TagNumber(13)
  $4.Timestamp get createdDate => $_getN(12);
  @$pb.TagNumber(13)
  set createdDate($4.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasCreatedDate() => $_has(12);
  @$pb.TagNumber(13)
  void clearCreatedDate() => clearField(13);
  @$pb.TagNumber(13)
  $4.Timestamp ensureCreatedDate() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get posterPath1 => $_getSZ(13);
  @$pb.TagNumber(14)
  set posterPath1($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPosterPath1() => $_has(13);
  @$pb.TagNumber(14)
  void clearPosterPath1() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get posterPath2 => $_getSZ(14);
  @$pb.TagNumber(15)
  set posterPath2($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPosterPath2() => $_has(14);
  @$pb.TagNumber(15)
  void clearPosterPath2() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get backdpPath1 => $_getSZ(15);
  @$pb.TagNumber(16)
  set backdpPath1($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasBackdpPath1() => $_has(15);
  @$pb.TagNumber(16)
  void clearBackdpPath1() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get backdpPath2 => $_getSZ(16);
  @$pb.TagNumber(17)
  set backdpPath2($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasBackdpPath2() => $_has(16);
  @$pb.TagNumber(17)
  void clearBackdpPath2() => clearField(17);
}

class TvFilmCrew extends $pb.GeneratedMessage {
  factory TvFilmCrew({
    $core.String? ref,
    $core.String? name,
    $core.String? profilePath1,
    $core.String? profilePath2,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (name != null) {
      $result.name = name;
    }
    if (profilePath1 != null) {
      $result.profilePath1 = profilePath1;
    }
    if (profilePath2 != null) {
      $result.profilePath2 = profilePath2;
    }
    return $result;
  }
  TvFilmCrew._() : super();
  factory TvFilmCrew.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmCrew.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmCrew', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'profilePath1', protoName: 'profilePath1')
    ..aOS(4, _omitFieldNames ? '' : 'profilePath2', protoName: 'profilePath2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmCrew clone() => TvFilmCrew()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmCrew copyWith(void Function(TvFilmCrew) updates) => super.copyWith((message) => updates(message as TvFilmCrew)) as TvFilmCrew;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmCrew create() => TvFilmCrew._();
  TvFilmCrew createEmptyInstance() => create();
  static $pb.PbList<TvFilmCrew> createRepeated() => $pb.PbList<TvFilmCrew>();
  @$core.pragma('dart2js:noInline')
  static TvFilmCrew getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmCrew>(create);
  static TvFilmCrew? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get profilePath1 => $_getSZ(2);
  @$pb.TagNumber(3)
  set profilePath1($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfilePath1() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfilePath1() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get profilePath2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set profilePath2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProfilePath2() => $_has(3);
  @$pb.TagNumber(4)
  void clearProfilePath2() => clearField(4);
}

class TvFilmCast extends $pb.GeneratedMessage {
  factory TvFilmCast({
    $core.String? ref,
    $core.String? name,
    $core.int? display,
    $core.String? character,
    $core.String? profilePath1,
    $core.String? profilePath2,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (name != null) {
      $result.name = name;
    }
    if (display != null) {
      $result.display = display;
    }
    if (character != null) {
      $result.character = character;
    }
    if (profilePath1 != null) {
      $result.profilePath1 = profilePath1;
    }
    if (profilePath2 != null) {
      $result.profilePath2 = profilePath2;
    }
    return $result;
  }
  TvFilmCast._() : super();
  factory TvFilmCast.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmCast.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmCast', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'display', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'character')
    ..aOS(5, _omitFieldNames ? '' : 'profilePath1', protoName: 'profilePath1')
    ..aOS(6, _omitFieldNames ? '' : 'profilePath2', protoName: 'profilePath2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmCast clone() => TvFilmCast()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmCast copyWith(void Function(TvFilmCast) updates) => super.copyWith((message) => updates(message as TvFilmCast)) as TvFilmCast;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmCast create() => TvFilmCast._();
  TvFilmCast createEmptyInstance() => create();
  static $pb.PbList<TvFilmCast> createRepeated() => $pb.PbList<TvFilmCast>();
  @$core.pragma('dart2js:noInline')
  static TvFilmCast getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmCast>(create);
  static TvFilmCast? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get display => $_getIZ(2);
  @$pb.TagNumber(3)
  set display($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplay() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get character => $_getSZ(3);
  @$pb.TagNumber(4)
  set character($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCharacter() => $_has(3);
  @$pb.TagNumber(4)
  void clearCharacter() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get profilePath1 => $_getSZ(4);
  @$pb.TagNumber(5)
  set profilePath1($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProfilePath1() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfilePath1() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get profilePath2 => $_getSZ(5);
  @$pb.TagNumber(6)
  set profilePath2($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProfilePath2() => $_has(5);
  @$pb.TagNumber(6)
  void clearProfilePath2() => clearField(6);
}

class TvFilmGenre extends $pb.GeneratedMessage {
  factory TvFilmGenre({
    $core.String? ref,
    $core.String? name,
    $core.int? display,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (name != null) {
      $result.name = name;
    }
    if (display != null) {
      $result.display = display;
    }
    return $result;
  }
  TvFilmGenre._() : super();
  factory TvFilmGenre.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmGenre.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmGenre', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'display', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmGenre clone() => TvFilmGenre()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmGenre copyWith(void Function(TvFilmGenre) updates) => super.copyWith((message) => updates(message as TvFilmGenre)) as TvFilmGenre;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmGenre create() => TvFilmGenre._();
  TvFilmGenre createEmptyInstance() => create();
  static $pb.PbList<TvFilmGenre> createRepeated() => $pb.PbList<TvFilmGenre>();
  @$core.pragma('dart2js:noInline')
  static TvFilmGenre getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmGenre>(create);
  static TvFilmGenre? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get display => $_getIZ(2);
  @$pb.TagNumber(3)
  set display($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplay() => clearField(3);
}

class TvFilmImage extends $pb.GeneratedMessage {
  factory TvFilmImage({
    $core.String? ref,
    $core.int? width,
    $core.int? height,
    $core.String? filePath1,
    $core.String? filePath2,
    $core.String? filePath3,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (filePath1 != null) {
      $result.filePath1 = filePath1;
    }
    if (filePath2 != null) {
      $result.filePath2 = filePath2;
    }
    if (filePath3 != null) {
      $result.filePath3 = filePath3;
    }
    return $result;
  }
  TvFilmImage._() : super();
  factory TvFilmImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmImage', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'filePath1', protoName: 'filePath1')
    ..aOS(5, _omitFieldNames ? '' : 'filePath2', protoName: 'filePath2')
    ..aOS(6, _omitFieldNames ? '' : 'filePath3', protoName: 'filePath3')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmImage clone() => TvFilmImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmImage copyWith(void Function(TvFilmImage) updates) => super.copyWith((message) => updates(message as TvFilmImage)) as TvFilmImage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmImage create() => TvFilmImage._();
  TvFilmImage createEmptyInstance() => create();
  static $pb.PbList<TvFilmImage> createRepeated() => $pb.PbList<TvFilmImage>();
  @$core.pragma('dart2js:noInline')
  static TvFilmImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmImage>(create);
  static TvFilmImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get filePath1 => $_getSZ(3);
  @$pb.TagNumber(4)
  set filePath1($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFilePath1() => $_has(3);
  @$pb.TagNumber(4)
  void clearFilePath1() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get filePath2 => $_getSZ(4);
  @$pb.TagNumber(5)
  set filePath2($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFilePath2() => $_has(4);
  @$pb.TagNumber(5)
  void clearFilePath2() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get filePath3 => $_getSZ(5);
  @$pb.TagNumber(6)
  set filePath3($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFilePath3() => $_has(5);
  @$pb.TagNumber(6)
  void clearFilePath3() => clearField(6);
}

class TvFilmVideo extends $pb.GeneratedMessage {
  factory TvFilmVideo({
    $core.String? ref,
    $core.String? type,
    $core.int? size,
    $core.String? youtube,
    $4.Timestamp? publishedAt,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (type != null) {
      $result.type = type;
    }
    if (size != null) {
      $result.size = size;
    }
    if (youtube != null) {
      $result.youtube = youtube;
    }
    if (publishedAt != null) {
      $result.publishedAt = publishedAt;
    }
    return $result;
  }
  TvFilmVideo._() : super();
  factory TvFilmVideo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmVideo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmVideo', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ref')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'size', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'youtube')
    ..aOM<$4.Timestamp>(5, _omitFieldNames ? '' : 'publishedAt', protoName: 'publishedAt', subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmVideo clone() => TvFilmVideo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmVideo copyWith(void Function(TvFilmVideo) updates) => super.copyWith((message) => updates(message as TvFilmVideo)) as TvFilmVideo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmVideo create() => TvFilmVideo._();
  TvFilmVideo createEmptyInstance() => create();
  static $pb.PbList<TvFilmVideo> createRepeated() => $pb.PbList<TvFilmVideo>();
  @$core.pragma('dart2js:noInline')
  static TvFilmVideo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmVideo>(create);
  static TvFilmVideo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ref => $_getSZ(0);
  @$pb.TagNumber(1)
  set ref($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get youtube => $_getSZ(3);
  @$pb.TagNumber(4)
  set youtube($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasYoutube() => $_has(3);
  @$pb.TagNumber(4)
  void clearYoutube() => clearField(4);

  @$pb.TagNumber(5)
  $4.Timestamp get publishedAt => $_getN(4);
  @$pb.TagNumber(5)
  set publishedAt($4.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublishedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublishedAt() => clearField(5);
  @$pb.TagNumber(5)
  $4.Timestamp ensurePublishedAt() => $_ensure(4);
}

class TvFilmListAllReq extends $pb.GeneratedMessage {
  factory TvFilmListAllReq({
    TvType? type,
    $core.String? genre,
    OrderBy? orderBy,
    $core.int? pageLimit,
    $core.int? pageOffset,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (genre != null) {
      $result.genre = genre;
    }
    if (orderBy != null) {
      $result.orderBy = orderBy;
    }
    if (pageLimit != null) {
      $result.pageLimit = pageLimit;
    }
    if (pageOffset != null) {
      $result.pageOffset = pageOffset;
    }
    return $result;
  }
  TvFilmListAllReq._() : super();
  factory TvFilmListAllReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmListAllReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmListAllReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..e<TvType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TvType.None, valueOf: TvType.valueOf, enumValues: TvType.values)
    ..aOS(2, _omitFieldNames ? '' : 'genre')
    ..e<OrderBy>(3, _omitFieldNames ? '' : 'orderBy', $pb.PbFieldType.OE, protoName: 'orderBy', defaultOrMaker: OrderBy.Unknown, valueOf: OrderBy.valueOf, enumValues: OrderBy.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pageLimit', $pb.PbFieldType.OU3, protoName: 'pageLimit')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pageOffset', $pb.PbFieldType.OU3, protoName: 'pageOffset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmListAllReq clone() => TvFilmListAllReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmListAllReq copyWith(void Function(TvFilmListAllReq) updates) => super.copyWith((message) => updates(message as TvFilmListAllReq)) as TvFilmListAllReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmListAllReq create() => TvFilmListAllReq._();
  TvFilmListAllReq createEmptyInstance() => create();
  static $pb.PbList<TvFilmListAllReq> createRepeated() => $pb.PbList<TvFilmListAllReq>();
  @$core.pragma('dart2js:noInline')
  static TvFilmListAllReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmListAllReq>(create);
  static TvFilmListAllReq? _defaultInstance;

  @$pb.TagNumber(1)
  TvType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(TvType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get genre => $_getSZ(1);
  @$pb.TagNumber(2)
  set genre($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGenre() => $_has(1);
  @$pb.TagNumber(2)
  void clearGenre() => clearField(2);

  @$pb.TagNumber(3)
  OrderBy get orderBy => $_getN(2);
  @$pb.TagNumber(3)
  set orderBy(OrderBy v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderBy() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageLimit => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageLimit($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageLimit() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pageOffset => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageOffset($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPageOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageOffset() => clearField(5);
}

class TvFilmListAllRes extends $pb.GeneratedMessage {
  factory TvFilmListAllRes({
    $core.Iterable<TvFilm>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  TvFilmListAllRes._() : super();
  factory TvFilmListAllRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmListAllRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmListAllRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..pc<TvFilm>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: TvFilm.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmListAllRes clone() => TvFilmListAllRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmListAllRes copyWith(void Function(TvFilmListAllRes) updates) => super.copyWith((message) => updates(message as TvFilmListAllRes)) as TvFilmListAllRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmListAllRes create() => TvFilmListAllRes._();
  TvFilmListAllRes createEmptyInstance() => create();
  static $pb.PbList<TvFilmListAllRes> createRepeated() => $pb.PbList<TvFilmListAllRes>();
  @$core.pragma('dart2js:noInline')
  static TvFilmListAllRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmListAllRes>(create);
  static TvFilmListAllRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TvFilm> get results => $_getList(0);
}

class TvFilmMainRandomReq extends $pb.GeneratedMessage {
  factory TvFilmMainRandomReq() => create();
  TvFilmMainRandomReq._() : super();
  factory TvFilmMainRandomReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmMainRandomReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmMainRandomReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmMainRandomReq clone() => TvFilmMainRandomReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmMainRandomReq copyWith(void Function(TvFilmMainRandomReq) updates) => super.copyWith((message) => updates(message as TvFilmMainRandomReq)) as TvFilmMainRandomReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmMainRandomReq create() => TvFilmMainRandomReq._();
  TvFilmMainRandomReq createEmptyInstance() => create();
  static $pb.PbList<TvFilmMainRandomReq> createRepeated() => $pb.PbList<TvFilmMainRandomReq>();
  @$core.pragma('dart2js:noInline')
  static TvFilmMainRandomReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmMainRandomReq>(create);
  static TvFilmMainRandomReq? _defaultInstance;
}

class TvFilmMainRandomRes extends $pb.GeneratedMessage {
  factory TvFilmMainRandomRes({
    TvFilm? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  TvFilmMainRandomRes._() : super();
  factory TvFilmMainRandomRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmMainRandomRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmMainRandomRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..aOM<TvFilm>(1, _omitFieldNames ? '' : 'result', subBuilder: TvFilm.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmMainRandomRes clone() => TvFilmMainRandomRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmMainRandomRes copyWith(void Function(TvFilmMainRandomRes) updates) => super.copyWith((message) => updates(message as TvFilmMainRandomRes)) as TvFilmMainRandomRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmMainRandomRes create() => TvFilmMainRandomRes._();
  TvFilmMainRandomRes createEmptyInstance() => create();
  static $pb.PbList<TvFilmMainRandomRes> createRepeated() => $pb.PbList<TvFilmMainRandomRes>();
  @$core.pragma('dart2js:noInline')
  static TvFilmMainRandomRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmMainRandomRes>(create);
  static TvFilmMainRandomRes? _defaultInstance;

  @$pb.TagNumber(1)
  TvFilm get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(TvFilm v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  TvFilm ensureResult() => $_ensure(0);
}

class TvFilmPopularOfDayListAllReq extends $pb.GeneratedMessage {
  factory TvFilmPopularOfDayListAllReq({
    TvType? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  TvFilmPopularOfDayListAllReq._() : super();
  factory TvFilmPopularOfDayListAllReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmPopularOfDayListAllReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmPopularOfDayListAllReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..e<TvType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: TvType.None, valueOf: TvType.valueOf, enumValues: TvType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmPopularOfDayListAllReq clone() => TvFilmPopularOfDayListAllReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmPopularOfDayListAllReq copyWith(void Function(TvFilmPopularOfDayListAllReq) updates) => super.copyWith((message) => updates(message as TvFilmPopularOfDayListAllReq)) as TvFilmPopularOfDayListAllReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmPopularOfDayListAllReq create() => TvFilmPopularOfDayListAllReq._();
  TvFilmPopularOfDayListAllReq createEmptyInstance() => create();
  static $pb.PbList<TvFilmPopularOfDayListAllReq> createRepeated() => $pb.PbList<TvFilmPopularOfDayListAllReq>();
  @$core.pragma('dart2js:noInline')
  static TvFilmPopularOfDayListAllReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmPopularOfDayListAllReq>(create);
  static TvFilmPopularOfDayListAllReq? _defaultInstance;

  @$pb.TagNumber(1)
  TvType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(TvType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class TvFilmPopularOfDayListAllRes extends $pb.GeneratedMessage {
  factory TvFilmPopularOfDayListAllRes({
    $core.Iterable<TvFilm>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  TvFilmPopularOfDayListAllRes._() : super();
  factory TvFilmPopularOfDayListAllRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TvFilmPopularOfDayListAllRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TvFilmPopularOfDayListAllRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'wowtv'), createEmptyInstance: create)
    ..pc<TvFilm>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: TvFilm.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TvFilmPopularOfDayListAllRes clone() => TvFilmPopularOfDayListAllRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TvFilmPopularOfDayListAllRes copyWith(void Function(TvFilmPopularOfDayListAllRes) updates) => super.copyWith((message) => updates(message as TvFilmPopularOfDayListAllRes)) as TvFilmPopularOfDayListAllRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TvFilmPopularOfDayListAllRes create() => TvFilmPopularOfDayListAllRes._();
  TvFilmPopularOfDayListAllRes createEmptyInstance() => create();
  static $pb.PbList<TvFilmPopularOfDayListAllRes> createRepeated() => $pb.PbList<TvFilmPopularOfDayListAllRes>();
  @$core.pragma('dart2js:noInline')
  static TvFilmPopularOfDayListAllRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TvFilmPopularOfDayListAllRes>(create);
  static TvFilmPopularOfDayListAllRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TvFilm> get results => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
