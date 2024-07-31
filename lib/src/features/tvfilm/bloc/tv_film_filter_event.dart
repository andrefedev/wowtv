part of 'tv_film_filter_bloc.dart';

@immutable
sealed class TvFilmFilterEvent extends Equatable {
  const TvFilmFilterEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmFilterEventInited extends TvFilmFilterEvent {

  const TvFilmFilterEventInited();
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