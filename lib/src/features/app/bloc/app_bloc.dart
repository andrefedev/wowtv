import 'package:uuid/uuid.dart';
import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/api/repository.dart';
import 'package:wowtv/src/api/storagesvc.dart';
import 'package:wowtv/src/features/app/app.dart';

part 'app_event.dart';

part 'app_state.dart';

part 'app_status.dart';

const uuid = Uuid();

class AppBloc extends Bloc<AppEvent, AppState> {
  final Repository _reposvc;
  final SecureStorage _storage;

  AppBloc({
    required Repository reposvc,
    required SecureStorage storage,
  })  : _reposvc = reposvc,
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

      // ############
      // # APP INFO #
      // ############


      // ############
      // # ID TOKEN #
      // ############

      String? idToken;
      idToken = await _storage.getIdToken();
      if (idToken == null) {
        idToken = await _reposvc.idToken();
        await _storage.setIdToken(idToken);
      }

      // #################
      // # FETCH USER ME #
      // #################

      await _reposvc.userme(idToken).then((user) {
        emit(state.copyWith(
          user: user,
          status: state.status.copyWith(
            reason: AppReason.loaded,
          ),
        ));
      });
    } on HttpException catch (e) {
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
    // unawaited(_storage.delIdToken());
    // emit(const AppState.unauthenticated());
  }
}
