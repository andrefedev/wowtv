part of 'film_main_bloc.dart';

class TvFilmMainState extends Equatable {
  final TvFilm? item;
  final TvFilmMainStatus status;

  const TvFilmMainState({
    this.item,
    this.status = const TvFilmMainStatus(),
  });

  copyWith({
    TvFilm? item,
    TvFilmMainStatus? status,
  }) {
    return TvFilmMainState(
      item: item ?? this.item,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [item, status];
}
