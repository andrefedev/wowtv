import 'package:grpc/grpc.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_image_event.dart';

part 'film_image_state.dart';

part 'film_image_status.dart';

class TvFilmImageBloc extends Bloc<TvFilmImageEvent, TvFilmImageState> {
  final TvFilm film;
  final ApiClient _reposvc;

  TvFilmImageBloc({
    required this.film,
    required ApiClient reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmImageState()) {
    on<TvFilmImageEventFetched>(_onFetched);
  }

  _onFetched(TvFilmImageEventFetched event, Emitter<TvFilmImageState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmImageReason.fetching,
        ),
      ));
      await Future.delayed(const Duration(seconds: 5));
      final req = TvFilmImageListAllReq(film: film.ref);
      await _reposvc.tvFilmImageListAll(req).then((result) {
        emit(state.copyWith(
          items: result.results,
          status: state.status.copyWith(
            reason: TvFilmImageReason.fetched,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmImageReason.failFetching,
        ),
      ));
    }
  }
}
