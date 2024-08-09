import 'package:grpc/grpc.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_cast_event.dart';

part 'film_cast_state.dart';

part 'film_cast_status.dart';

class TvFilmCastBloc extends Bloc<TvFilmCastEvent, TvFilmCastState> {
  final TvFilm film;
  final ApiClient _reposvc;

  TvFilmCastBloc({
    required this.film,
    required ApiClient reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmCastState()) {
    on<TvFilmCastEventFetched>(_onFetched);
  }

  _onFetched(TvFilmCastEventFetched event, Emitter<TvFilmCastState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmCastReason.fetching,
        ),
      ));
      await Future.delayed(const Duration(seconds: 5));
      final req = TvFilmCastListAllReq(film: film.ref);
      await _reposvc.tvFilmCastListAll(req).then((result) {
        emit(state.copyWith(
          items: result.results,
          status: state.status.copyWith(
            reason: TvFilmCastReason.fetched,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmCastReason.failFetching,
        ),
      ));
    }
  }
}
