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

// FILTER'S SELECT

class TvFilmFilterEventSelectedMain extends  TvFilmFilterEvent {
  final bool? value;

  const TvFilmFilterEventSelectedMain([this.value]);

  @override
  List<Object?> get props => [value];
}

class TvFilmFilterEventSelectedGenre extends  TvFilmFilterEvent {
  final String? value;

  const TvFilmFilterEventSelectedGenre([this.value]);

  @override
  List<Object?> get props => [value];
}