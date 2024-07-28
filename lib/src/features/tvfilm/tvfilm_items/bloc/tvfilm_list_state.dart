part of 'tvfilm_list_bloc.dart';

class TvFilmListState extends Equatable {
  final bool max;
  final List<TvFilm> items;
  final TvFilmListStatus status;

  const TvFilmListState({
    this.max = false,
    this.items = const <TvFilm>[],
    this.status = const TvFilmListStatus(),
  });

  TvFilmListState copyWith({
    bool? max,
    List<TvFilm>? items,
    TvFilmListStatus? status,
  }) {
    return TvFilmListState(
      max: max ?? this.max,
      items: items ?? this.items,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [max, items, status];
}
