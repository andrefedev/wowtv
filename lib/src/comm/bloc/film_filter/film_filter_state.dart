part of 'film_filter_bloc.dart';

class TvFilmFilterState extends Equatable {
  final bool max;
  final TvFilmFilter? filter;
  final List<TvFilm> results;
  final TvFilmFilterStatus statusx;

  const TvFilmFilterState({
    this.max = false,
    this.filter,
    this.results = const <TvFilm>[],
    this.statusx = const TvFilmFilterStatus(),
  });

  copyWith({
    bool? max,
    TvFilmFilter? filter,
    List<TvFilm>? results,
    TvFilmFilterStatus? statusx,
  }) {
    return TvFilmFilterState(
      max: max ?? this.max,
      filter: filter ?? this.filter,
      results: results ?? this.results,
      statusx: statusx ?? this.statusx,
    );
  }

  @override
  List<Object?> get props => [max, filter, results, statusx];
}
