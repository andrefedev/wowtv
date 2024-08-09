import 'package:grpc/grpc.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_media_event.dart';

part 'film_media_state.dart';

part 'film_media_status.dart';

class TvFilmMediaBloc extends Bloc<TvFilmMediaEvent, TvFilmMediaState> {
  final TvFilm film;
  final ApiClient _reposvc;

  TvFilmMediaBloc({
    required this.film,
    required ApiClient reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmMediaState()) {
    on<TvFilmMediaEventFetched>(_onFetched);
  }

  _onFetched(TvFilmMediaEventFetched event, Emitter<TvFilmMediaState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmMediaReason.fetching,
        ),
      ));

      final req = TvFilmMediaListAllReq(film: film.ref);
      await _reposvc.tvFilmMediaListAll(req).then((result) {
        emit(state.copyWith(
          items: result.results,
          status: state.status.copyWith(
            reason: TvFilmMediaReason.fetched,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmMediaReason.failFetching,
        ),
      ));
    }
  }
}
