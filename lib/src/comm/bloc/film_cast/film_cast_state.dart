part of 'film_cast_bloc.dart';

class TvFilmCastState extends Equatable {
  final List<TvFilmCast> items;
  final TvFilmCastStatus status;

  const TvFilmCastState({
    this.items = const <TvFilmCast>[],
    this.status = const TvFilmCastStatus(),
  });

  copyWith({
    List<TvFilmCast>? items,
    TvFilmCastStatus? status,
  }) {
    return TvFilmCastState(
      items: items ?? this.items,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [items, status];
}
