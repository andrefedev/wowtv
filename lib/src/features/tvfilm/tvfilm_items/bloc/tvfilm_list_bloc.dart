import 'dart:async';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:stream_transform/stream_transform.dart';

import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/api/repository.dart';
import 'package:wowtv/src/helper.dart';

part 'tvfilm_list_event.dart';

part 'tvfilm_list_state.dart';

part 'tvfilm_list_status.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class TvFilmListBloc extends Bloc<TvFilmListEvent, TvFilmListState> {
  final Repository _reposvc;

  TvFilmListBloc({
    required Repository reposvc,
    required EventCrudResult eventBus,
  })  : _reposvc = reposvc,
        super(const TvFilmListState()) {
    // SYNC
    on<TvFilmListEventReseted>(_onReseted);
    on<TvFilmListEventFetched>(_onFetched);
    on<TvFilmListEventFetched2>(_onFetched2, transformer: throttleDroppable(_throttleDuration));

    // stream suscription
    // _lastChanged = eventBus.on<CrudResult<Brand>>().listen((event) {
    //   if (event.status == CrudStatus.loaded) {
    //     add(BrandListEventLoaded(event.result));
    //   } else if (event.status == CrudStatus.created) {
    //     add(BrandListEventCreated(event.result));
    //   } else if (event.status == CrudStatus.updated) {
    //     add(BrandListEventUpdated(event.result));
    //   } else if (event.status == CrudStatus.deleted) {
    //     add(BrandListEventDeleted(event.result));
    //   }
    // });

    // bootstrap
    add(const TvFilmListEventFetched());
  }

  // late final StreamSubscription<CrudResult<Brand>> _lastChanged;
  //
  // @override
  // Future<void> close() {
  //   _lastChanged.cancel();
  //   return super.close();
  // }

  /// reinicia el estado
  _onReseted(TvFilmListEventReseted event, Emitter<TvFilmListState> emit) {
    emit(const TvFilmListState());
  }

  _onFetched(TvFilmListEventFetched event, Emitter<TvFilmListState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmListReason.loading,
        ),
      ));
      await _reposvc.tvfilmListAll(20, 0).then((items) {
        emit(state.copyWith(
          items: items,
          status: state.status.copyWith(
            reason: TvFilmListReason.loaded,
          ),
        ));
      });
    } on HttpException catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmListReason.failLoading,
        ),
      ));
    }
  }

  _onFetched2(TvFilmListEventFetched2 event, Emitter<TvFilmListState> emit) async {
    if (state.max) {
      return;
    }
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmListReason.loading2,
        ),
      ));
      await _reposvc.tvfilmListAll(20, state.items.length).then((items) {
        emit(state.copyWith(
          max: 20 > items.length,
          items: List.of(state.items)..addAll(items),
          status: state.status.copyWith(reason: TvFilmListReason.loaded2),
        ));
      });
    } on HttpException catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmListReason.failLoading2,
        ),
      ));
    }
  }
}
