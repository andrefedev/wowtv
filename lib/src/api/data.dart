import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.e.dart';

part 'data.g.dart';

@JsonSerializable()
class TvFilterData extends Equatable {
  final bool? main;
  final TvType? type;
  final String? genre;
  final Rating? rating; // filtrar por popularidad (fecha)
  final OrderBy? orderBy; // orderBy se puede filtrar por numero de vistas

  const TvFilterData({
    this.main,
    this.type,
    this.genre,
    this.rating,
    this.orderBy,
  });

  Map<String, dynamic> toJson() => _$TvFilterDataToJson(this);

  factory TvFilterData.fromJson(Map<String, dynamic> json) => _$TvFilterDataFromJson(json);

  factory TvFilterData.test() {
    return const TvFilterData(
      type: TvType.movie,
      orderBy: OrderBy.mostRelevant,
    );
  }

  copyWith({
    bool? main,
    TvType? type,
    String? genre,
    Rating? rating,
    OrderBy? orderBy,
  }) {
    return TvFilterData(
      main: main ?? this.main,
      type: type ?? this.type,
      genre: genre ?? this.genre,
      rating: rating ?? this.rating,
      orderBy: orderBy ?? this.orderBy,
    );
  }

  @override
  List<Object?> get props => [main, type, genre, rating, orderBy];
}
