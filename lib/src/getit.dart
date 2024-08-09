import 'package:grpc/grpc.dart';
import 'package:get_it/get_it.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'conf.dart';
import 'router.dart';
import 'api/api.dart';
import 'comm/comm.dart';
import 'api/storagesvc.dart';
import 'features/app/app.dart';

GetIt getIt = GetIt.instance;

void setup() {
  // ##########
  // APP INIT #
  // ##########

  // In App Purchase
  getIt.registerLazySingleton<InAppPurchase>(() => InAppPurchase.instance);

  // SharedPreferences
  getIt.registerLazySingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());

  // FlutterSecureStorage
  getIt.registerLazySingleton<FlutterSecureStorage>(() => const FlutterSecureStorage());

  // Local Storage
  getIt.registerLazySingleton<LocalStorage>(() => LocalStorage(storage: getIt<SharedPreferences>()));

  // Secure Storage
  getIt.registerLazySingleton<SecureStorage>(() => SecureStorage(storage: getIt<FlutterSecureStorage>()));

  // ###################
  // (GRPC) API CLIENT #
  // ###################

  getIt.registerLazySingleton<ClientChannel>(
      () => ClientChannel(AppConfig.apiHost, port: AppConfig.apiPort, options: CHANNEL_OPTIONS),
      dispose: (client) => client.terminate());

  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      getIt<ClientChannel>(),
      interceptors: [
        AuthTokenMiddleware(getIt<SecureStorage>().getIdToken),
      ],
    ),
  );

  // #################
  // # BLOC SERVICES #
  // #################

  // APP BLOC

  getIt.registerLazySingleton<AppBloc>(() => AppBloc(reposvc: getIt(), storage: getIt()));

  getIt.registerLazySingleton<AppGoRouter>(() => AppGoRouter(appBloc: getIt<AppBloc>()));

  // COMM BLOC'S

  getIt.registerFactory<TvFilmMainBloc>(() => TvFilmMainBloc(reposvc: getIt<ApiClient>()));

  getIt.registerFactory<TvFilmFilterBloc>(() => TvFilmFilterBloc(reposvc: getIt<ApiClient>()));

  getIt.registerFactory<TvFilmPopularBloc>(() => TvFilmPopularBloc(reposvc: getIt<ApiClient>()));

  getIt.registerFactoryParam<TvFilmDetailBloc, TvFilm, void>(
      (film, _) => TvFilmDetailBloc(item: film, reposvc: getIt<ApiClient>()));

  getIt.registerFactoryParam<TvFilmImageBloc, TvFilm, void>(
          (film, _) => TvFilmImageBloc(film: film, reposvc: getIt<ApiClient>()));

  getIt.registerFactoryParam<TvFilmMediaBloc, TvFilm, void>(
      (film, _) => TvFilmMediaBloc(film: film, reposvc: getIt<ApiClient>()));
}
