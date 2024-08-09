part of 'film_rating_bloc.dart';

@immutable
sealed class TvFilmPopularEvent extends Equatable {
  const TvFilmPopularEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmPopularEventReseted extends TvFilmPopularEvent {
  const TvFilmPopularEventReseted();
}

class TvFilmPopularEventFetched extends TvFilmPopularEvent {
  final TvType? type;

  const TvFilmPopularEventFetched([this.type]);

  @override
  List<Object?> get props => [type];
}
