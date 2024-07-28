import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/api/repository.dart';

part 'tvfilm_item_event.dart';

part 'tvfilm_item_state.dart';

part 'tvfilm_item_status.dart';

class TvFilmItemBloc extends Bloc<TvFilmItemEvent, TvFilmItemState> {
  final Repository _reposvc;

  TvFilmItemBloc({
    required TvFilm item,
    required Repository reposvc,
  })  : _reposvc = reposvc,
        super(TvFilmItemState(item: item)) {
    // Handle events
    on<TvFilmItemEventLoaded>(_onFetched);

    // bootstrap
    add(const TvFilmItemEventLoaded());
  }

  _onFetched(TvFilmItemEventLoaded event, Emitter<TvFilmItemState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmItemReason.loading,
        ),
      ));
      await _reposvc.tvfilmDetail(state.item.ref).then((item) {
        emit(state.copyWith(
          item: item,
          status: state.status.copyWith(
            reason: TvFilmItemReason.loaded,
          ),
        ));
      });
    } on HttpException catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmItemReason.failLoading,
        ),
      ));
    }
  }
}
