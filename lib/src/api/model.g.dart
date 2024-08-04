// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      ref: json['ref'] as String,
      idToken: json['idToken'] as String,
      isAdmin: json['isAdmin'] as bool,
      isPrime: json['isPrime'] as bool,
      isActive: json['isActive'] as bool,
      lastLogin: DateTime.parse(json['lastLogin'] as String),
      joinedDate: DateTime.parse(json['joinedDate'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'ref': instance.ref,
      'idToken': instance.idToken,
      'isAdmin': instance.isAdmin,
      'isPrime': instance.isPrime,
      'isActive': instance.isActive,
      'lastLogin': instance.lastLogin.toIso8601String(),
      'joinedDate': instance.joinedDate.toIso8601String(),
    };

TvFilm _$TvFilmFromJson(Map<String, dynamic> json) => TvFilm(
      ref: json['ref'] as String,
      type: $enumDecode(_$TvTypeEnumMap, json['type']),
      name1: json['name1'] as String,
      name2: json['name2'] as String,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tagline: json['tagline'] as String,
      runtime: (json['runtime'] as num).toInt(),
      voteavg: (json['voteavg'] as num).toDouble(),
      popular: (json['popular'] as num).toInt(),
      overview: json['overview'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      createdDate: DateTime.parse(json['createdDate'] as String),
      posterPath2: json['posterPath2'] as String,
      backdpPath2: json['backdpPath2'] as String,
    );

Map<String, dynamic> _$TvFilmToJson(TvFilm instance) => <String, dynamic>{
      'ref': instance.ref,
      'type': _$TvTypeEnumMap[instance.type]!,
      'name1': instance.name1,
      'name2': instance.name2,
      'genres': instance.genres,
      'tagline': instance.tagline,
      'runtime': instance.runtime,
      'voteavg': instance.voteavg,
      'popular': instance.popular,
      'overview': instance.overview,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'createdDate': instance.createdDate.toIso8601String(),
      'posterPath2': instance.posterPath2,
      'backdpPath2': instance.backdpPath2,
    };

const _$TvTypeEnumMap = {
  TvType.movie: 'movie',
  TvType.serie: 'serie',
};
