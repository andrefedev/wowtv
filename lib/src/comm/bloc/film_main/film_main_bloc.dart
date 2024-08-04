import 'package:flutter/foundation.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/data.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wowtv/src/api/repository.dart';

part 'film_main_event.dart';

part 'film_main_state.dart';

part 'film_main_status.dart';

class TvFilmMainBloc extends Bloc<TvFilmMainEvent, TvFilmMainState> {
  final Repository _reposvc;

  TvFilmMainBloc({
    required Repository reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmMainState()) {
    on<TvFilmMainEventFetched>(_onFetched);
  }

  _onFetched(TvFilmMainEventFetched event, Emitter<TvFilmMainState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmMainReason.fetching,
        ),
      ));
      await _reposvc.tvfilmMainDetail().then((item) {
        emit(state.copyWith(
          item: item,
          status: state.status.copyWith(
            reason: TvFilmMainReason.fetched,
          ),
        ));
      });
    } on HttpException catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmMainReason.failFetching,
        ),
      ));
    }
  }
}
