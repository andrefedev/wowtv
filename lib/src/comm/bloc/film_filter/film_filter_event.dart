part of 'film_filter_bloc.dart';

@immutable
sealed class TvFilmFilterEvent extends Equatable {
  const TvFilmFilterEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmFilterEventReseted extends TvFilmFilterEvent {
  const TvFilmFilterEventReseted();
}

class TvFilmFilterEventFetched extends TvFilmFilterEvent {
  final TvFilmFilter value;

  const TvFilmFilterEventFetched._(this.value);

  factory TvFilmFilterEventFetched() {
    return TvFilmFilterEventFetched._(
      TvFilmFilter(
        type: TvType.MOVIE,
        orderBy: OrderBy.MOST_RECENT,
        pageLimit: 20,
      ),
    );
  }

  @override
  List<Object?> get props => [value];
}

class TvFilmFilterEventFetched2 extends TvFilmFilterEvent {
  const TvFilmFilterEventFetched2();
}
