part of 'film_item_bloc.dart';

class TvFilmDetailState extends Equatable {
  final TvFilm item;
  final TvFilmDetailStatus status;

  const TvFilmDetailState._({
    required this.item,
    required this.status,
  });

  const TvFilmDetailState(TvFilm item)
      : this._(
          item: item,
          status: const TvFilmDetailStatus(),
        );

  copyWith({
    TvFilm? item,
    TvFilmDetailStatus? status,
  }) {
    return TvFilmDetailState._(
      item: item ?? this.item,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [item, status];
}
