import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.e.dart';

part 'data.g.dart';

@JsonSerializable()
class TvFilterData extends Equatable {
  final TvType? type;
  final String? genre;
  final Rating? rating;
  final OrderBy? orderBy;
  final int? pageLimit;
  final int? pageOffset;

  const TvFilterData({
    this.type,
    this.genre,
    this.rating,
    this.orderBy,
    this.pageLimit = 20,
    this.pageOffset = 0,
  });

  Map<String, dynamic> toJson() => _$TvFilterDataToJson(this);

  factory TvFilterData.fromJson(Map<String, dynamic> json) => _$TvFilterDataFromJson(json);

  copyWith({
    TvType? type,
    String? genre,
    Rating? rating,
    OrderBy? orderBy,
    int? pageLimit,
    int? pageOffset,
  }) {
    return TvFilterData(
        type: type ?? this.type,
        genre: genre ?? this.genre,
        rating: rating ?? this.rating,
        orderBy: orderBy ?? this.orderBy,
        pageLimit: pageLimit ?? this.pageLimit,
        pageOffset: pageOffset ?? this.pageOffset);
  }

  @override
  List<Object?> get props => [type, genre, rating, orderBy, pageLimit, pageOffset];
}
