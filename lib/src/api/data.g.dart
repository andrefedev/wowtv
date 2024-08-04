// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvFilterData _$TvFilterDataFromJson(Map<String, dynamic> json) => TvFilterData(
      type: $enumDecodeNullable(_$TvTypeEnumMap, json['type']),
      genre: json['genre'] as String?,
      rating: $enumDecodeNullable(_$RatingEnumMap, json['rating']),
      orderBy: $enumDecodeNullable(_$OrderByEnumMap, json['orderBy']),
      pageLimit: (json['pageLimit'] as num?)?.toInt() ?? 20,
      pageOffset: (json['pageOffset'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TvFilterDataToJson(TvFilterData instance) =>
    <String, dynamic>{
      'type': _$TvTypeEnumMap[instance.type],
      'genre': instance.genre,
      'rating': _$RatingEnumMap[instance.rating],
      'orderBy': _$OrderByEnumMap[instance.orderBy],
      'pageLimit': instance.pageLimit,
      'pageOffset': instance.pageOffset,
    };

const _$TvTypeEnumMap = {
  TvType.movie: 'movie',
  TvType.serie: 'serie',
};

const _$RatingEnumMap = {
  Rating.daily: 'daily',
  Rating.weekly: 'weekly',
  Rating.monthly: 'monthly',
};

const _$OrderByEnumMap = {
  OrderBy.mostNew: 'new',
  OrderBy.mostValued: 'valued',
  OrderBy.mostRating: 'rating',
  OrderBy.mostRelevant: 'relevant',
};
