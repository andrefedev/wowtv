part of 'film_media_bloc.dart';

class TvFilmMediaState extends Equatable {
  final List<TvFilmVideo> items;
  final TvFilmMediaStatus status;

  const TvFilmMediaState({
    this.items = const <TvFilmVideo>[],
    this.status = const TvFilmMediaStatus(),
  });

  copyWith({
    List<TvFilmVideo>? items,
    TvFilmMediaStatus? status,
  }) {
    return TvFilmMediaState(
      items: items ?? this.items,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [items, status];
}
