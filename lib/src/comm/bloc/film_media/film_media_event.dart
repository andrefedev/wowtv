part of 'film_media_bloc.dart';

@immutable
sealed class TvFilmMediaEvent extends Equatable {
  const TvFilmMediaEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmMediaEventFetched extends TvFilmMediaEvent {
  const TvFilmMediaEventFetched();
}
