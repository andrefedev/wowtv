part of 'film_item_bloc.dart';

@immutable
sealed class TvFilmDetailEvent extends Equatable {
  const TvFilmDetailEvent();

  @override
  List<Object?> get props => [];
}

class TvFilmDetailEventFetched extends TvFilmDetailEvent {
  const TvFilmDetailEventFetched();
}
