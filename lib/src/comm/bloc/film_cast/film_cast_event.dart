part of 'film_cast_bloc.dart';

@immutable
sealed class TvFilmCastEvent extends Equatable {
  const TvFilmCastEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmCastEventFetched extends TvFilmCastEvent {
  const TvFilmCastEventFetched();
}
