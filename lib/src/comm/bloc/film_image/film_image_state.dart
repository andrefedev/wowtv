part of 'film_image_bloc.dart';

class TvFilmImageState extends Equatable {
  final List<TvFilmImage> items;
  final TvFilmImageStatus status;

  const TvFilmImageState({
    this.items = const <TvFilmImage>[],
    this.status = const TvFilmImageStatus(),
  });

  copyWith({
    List<TvFilmImage>? items,
    TvFilmImageStatus? status,
  }) {
    return TvFilmImageState(
      items: items ?? this.items,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [items, status];
}
