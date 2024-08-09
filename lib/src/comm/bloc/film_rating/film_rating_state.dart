part of 'film_rating_bloc.dart';

class TvFilmPopularState extends Equatable {
  final List<TvFilm> items;
  final TvFilmPopularStatus status;

  const TvFilmPopularState({
    this.items = const <TvFilm>[],
    this.status = const TvFilmPopularStatus(),
  });

  copyWith({
    TvType? type,
    List<TvFilm>? items,
    TvFilmPopularStatus? status,
  }) {
    return TvFilmPopularState(
      items: items ?? this.items,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [items, status];
}
