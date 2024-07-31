import 'package:get_it/get_it.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'conf.dart';
import 'router.dart';
import 'api/api.dart';
import 'bloc/bloc.dart';
import 'api/repository.dart';
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

  getIt.registerLazySingleton<HttpService>(
      () => HttpService(baseUrl: AppConfig.apiHost, getIdToken: getIt<SecureStorage>().getIdToken),
      dispose: (ref) => ref.close());

  getIt.registerLazySingleton<Repository>(() => Repository(getIt()));

  // #################
  // # BLOC SERVICES #
  // #################

  // APP BLOC

  getIt.registerLazySingleton<AppBloc>(() => AppBloc(reposvc: getIt(), storage: getIt()));

  getIt.registerLazySingleton<AppGoRouter>(() => AppGoRouter(appBloc: getIt<AppBloc>()));

  // COMM BLOC'S

  getIt.registerFactory<TvFilmFilterBloc>(() => TvFilmFilterBloc(reposvc: getIt<Repository>()));
  //
  // getIt.registerLazySingleton<TvFilmFilterBloc>(() => TvFilmFilterBloc(reposvc: getIt<Repository>()),
  //     instanceName: "testing");
}
