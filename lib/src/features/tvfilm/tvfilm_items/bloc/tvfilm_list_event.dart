part of 'tvfilm_list_bloc.dart';

@immutable
sealed class TvFilmListEvent extends Equatable {
  const TvFilmListEvent();

  @override
  List<Object> get props => [];
}

// #################
// # HANDLE EVENTS #
// #################

class TvFilmListEventReseted extends TvFilmListEvent {
  const TvFilmListEventReseted();
}

class TvFilmListEventFetched extends TvFilmListEvent {
  const TvFilmListEventFetched();
}

class TvFilmListEventFetched2 extends TvFilmListEvent {
  const TvFilmListEventFetched2();
}
