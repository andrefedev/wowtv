part of 'film_main_bloc.dart';

@immutable
sealed class TvFilmMainEvent extends Equatable {
  const TvFilmMainEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmMainEventFetched extends TvFilmMainEvent {
  const TvFilmMainEventFetched();
}
