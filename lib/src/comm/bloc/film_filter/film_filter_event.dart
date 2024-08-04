part of 'film_filter_bloc.dart';

@immutable
sealed class TvFilmFilterEvent extends Equatable {
  const TvFilmFilterEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmFilterEventChanged extends TvFilmFilterEvent {
  final TvFilterData value;

  const TvFilmFilterEventChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class TvFilmFilterEventReseted extends TvFilmFilterEvent {
  const TvFilmFilterEventReseted();
}

class TvFilmFilterEventFetched extends TvFilmFilterEvent {
  const TvFilmFilterEventFetched();
}

class TvFilmFilterEventFetched2 extends TvFilmFilterEvent {
  const TvFilmFilterEventFetched2();
}

// FILTER'S SELECT _onSelectedReleaseDate

class TvFilmFilterEventSelectedMovieReleaseDate extends TvFilmFilterEvent {
  const TvFilmFilterEventSelectedMovieReleaseDate();
}

class TvFilmFilterEventSelectedSerieRatingToday extends TvFilmFilterEvent {
  const TvFilmFilterEventSelectedSerieRatingToday();
}

class TvFilmFilterEventSelectedMovieRatingToday extends TvFilmFilterEvent {
  const TvFilmFilterEventSelectedMovieRatingToday();
}
