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
      name1: json['name1'] as String,
      name2: json['name2'] as String,
      budget: (json['budget'] as num).toInt(),
      revenue: (json['revenue'] as num).toInt(),
      tagline: json['tagline'] as String,
      runtime: (json['runtime'] as num).toInt(),
      voteavg: (json['voteavg'] as num).toDouble(),
      votesize: (json['votesize'] as num).toInt(),
      overview: json['overview'] as String,
      posterPath2: json['posterPath2'] as String,
      backdpPath2: json['backdpPath2'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      updatedDate: DateTime.parse(json['updatedDate'] as String),
    );

Map<String, dynamic> _$TvFilmToJson(TvFilm instance) => <String, dynamic>{
      'ref': instance.ref,
      'name1': instance.name1,
      'name2': instance.name2,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'tagline': instance.tagline,
      'runtime': instance.runtime,
      'voteavg': instance.voteavg,
      'votesize': instance.votesize,
      'overview': instance.overview,
      'posterPath2': instance.posterPath2,
      'backdpPath2': instance.backdpPath2,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'updatedDate': instance.updatedDate.toIso8601String(),
    };
