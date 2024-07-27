import 'package:get_it/get_it.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'conf.dart';
import 'router.dart';
import 'api/api.dart';
import 'api/storage.dart';
import 'api/storage.dart';
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

  // Secure Storage
  getIt.registerLazySingleton<SecureStorage>(() => SecureStorage(storage: getIt<FlutterSecureStorage>()));


  // ###################
  // (GRPC) API CLIENT #
  // ###################

  getIt.registerLazySingleton<ClientChannel>(
      () => ClientChannel(AppConfig.apiHost, port: AppConfig.apiPort, options: CHANNEL_OPTIONS),
      dispose: (client) => client.terminate());

  getIt.registerLazySingleton<RpcTvClient>(
    () => RpcTvClient(
      getIt<ClientChannel>(),
      interceptors: [
        AuthTokenMiddleware(getIt<SecureStorage>().idToken),
      ],
    ),
  );

  // #################
  // # BLOC SERVICES #
  // #################

  // APP BLOC

  getIt.registerLazySingleton<AppBloc>(() => AppBloc(appsvc: getIt(), storage: getIt()));

  getIt.registerLazySingleton<AppGoRouter>(() => AppGoRouter(appBloc: getIt<AppBloc>()));
}
