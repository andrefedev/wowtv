part of 'film_filter_bloc.dart';

class TvFilmFilterState extends Equatable {
  final bool max;
  final List<TvFilm> items;
  final TvFilterData filter;
  final TvFilmFilterStatus status;

  const TvFilmFilterState({
    this.max = false,
    this.items = const <TvFilm>[],
    this.filter = const TvFilterData(),
    this.status = const TvFilmFilterStatus(),
  });

  copyWith({
    bool? max,
    List<TvFilm>? items,
    TvFilterData? filter,
    TvFilmFilterStatus? status,
  }) {
    return TvFilmFilterState(
      max: max ?? this.max,
      items: items ?? this.items,
      filter: filter ?? this.filter,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [max, items, filter, status];
}