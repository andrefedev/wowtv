import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_rating_event.dart';

part 'film_rating_state.dart';

part 'film_rating_status.dart';

class TvFilmPopularBloc extends Bloc<TvFilmPopularEvent, TvFilmPopularState> {
  final ApiClient _reposvc;

  TvFilmPopularBloc({
    required ApiClient reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmPopularState()) {
    on<TvFilmPopularEventFetched>(_onFetched);
  }

  _onFetched(TvFilmPopularEventFetched event, Emitter<TvFilmPopularState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmPopularReason.fetching,
        ),
      ));
      final req = TvFilmPopularOfDayListAllReq(type: event.type);
      await _reposvc.tvFilmPopularOfDayListAll(req).then((res) {
        emit(state.copyWith(
          items: res.results,
          status: state.status.copyWith(
            reason: TvFilmPopularReason.fetched,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmPopularReason.failFetching,
        ),
      ));
    }
  }
}
