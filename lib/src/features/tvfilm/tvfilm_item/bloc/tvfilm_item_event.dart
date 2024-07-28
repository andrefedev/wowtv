part of 'tvfilm_item_bloc.dart';

@immutable
sealed class TvFilmItemEvent extends Equatable {
  const TvFilmItemEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmItemEventLoaded extends TvFilmItemEvent {
  const TvFilmItemEventLoaded();
}