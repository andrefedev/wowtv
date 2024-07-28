part of 'tvfilm_item_bloc.dart';

class TvFilmItemState extends Equatable {
  final TvFilm item;
  final TvFilmItemStatus status;

  const TvFilmItemState({
    required this.item,
    this.status = const TvFilmItemStatus(),
  });

  copyWith({
    TvFilm? item,
    TvFilmItemStatus? status,
  }) {
    return TvFilmItemState(
      item: item ?? this.item,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [item, status];
}
