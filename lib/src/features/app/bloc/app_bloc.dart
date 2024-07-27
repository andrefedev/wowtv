import 'dart:async';

import 'package:uuid/uuid.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rpctv/src/api/api.dart';
import 'package:rpctv/src/api/storage.dart';

part 'app_event.dart';

part 'app_state.dart';

part 'app_status.dart';

const uuid = Uuid();

class AppBloc extends Bloc<AppEvent, AppState> {
  final RpcTvClient _appsvc;
  final LocalStorage _storage;

  AppBloc({
    required RpcTvClient appsvc,
    required LocalStorage storage,
  })  : _appsvc = appsvc,
        _storage = storage,
        super(const AppState()) {
    on<AppEventInited>(_onAppInited);
    on<AppEventReseted>(_onAppReseted);
    on<AppEventUserChanged>(_onAppUserChanged);
    on<AppEventLogoutRequested>(_onAppLogoutRequested);

    // Bootstrap
    add(const AppEventInited());
  }

  _onAppInited(AppEventInited event, Emitter<AppState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: AppReason.loading,
        ),
      ));

      // #################
      // # FETCH USER ME #
      // #################

      final request = UserMeRequest();
      await _appsvc.userMe(request).then((response) {
        emit(state.copyWith(
          user: response.user,
          status: state.status.copyWith(
            reason: AppReason.loaded,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: AppReason.failLoading,
        ),
      ));
    }
  }

  _onAppReseted(AppEventReseted event, Emitter<AppState> emit) {
    emit(const AppState());
  }

  _onAppUserChanged(AppEventUserChanged event, Emitter<AppState> emit) {
    final user = event.user;
    if (user != null) {
      // emit(AppState.authenticated(user));
    } else {
      // emit(const AppState.unauthenticated());
    }
  }

  _onAppLogoutRequested(AppEventLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_storage.delIdToken());
    // emit(const AppState.unauthenticated());
  }
}
