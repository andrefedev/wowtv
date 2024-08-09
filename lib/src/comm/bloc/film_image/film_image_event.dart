part of 'film_image_bloc.dart';

@immutable
sealed class TvFilmImageEvent extends Equatable {
  const TvFilmImageEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmImageEventFetched extends TvFilmImageEvent {
  const TvFilmImageEventFetched();
}
