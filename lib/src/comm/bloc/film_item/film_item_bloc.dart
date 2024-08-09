import 'package:grpc/grpc.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_item_event.dart';

part 'film_item_state.dart';

part 'film_item_status.dart';

class TvFilmDetailBloc extends Bloc<TvFilmDetailEvent, TvFilmDetailState> {
  final ApiClient _reposvc;

  TvFilmDetailBloc({
    required TvFilm item,
    required ApiClient reposvc,
  })  : _reposvc = reposvc,
        super(TvFilmDetailState(item)) {
    on<TvFilmDetailEventFetched>(_onFetched);
  }

  // _onReseted(TvFilmMainEventReseted event, Emitter<TvFilmMainState>)

  _onFetched(TvFilmDetailEventFetched event, Emitter<TvFilmDetailState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmDetailReason.fetching,
        ),
      ));

      final ref = state.item.ref;
      final req = TvFilmDetailReq(ref: ref);
      await _reposvc.tvFilmDetail(req).then((res) {
        emit(state.copyWith(
          item: res.result,
          status: state.status.copyWith(
            reason: TvFilmDetailReason.fetched,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmDetailReason.failFetching,
        ),
      ));
    }
  }
}
