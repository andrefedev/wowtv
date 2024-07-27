import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/app/app.dart';

// ignore: non_constant_identifier_names
final RootNavKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((dynamic _) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class AppGoRouter {
  final AppBloc _app;

  late final GoRouter _router;

  AppGoRouter({
    required AppBloc appBloc,
  }) : _app = appBloc {
    _router = GoRouter(
      routes: _routes,
      redirect: _redirect,
      navigatorKey: RootNavKey,
      refreshListenable: GoRouterRefreshStream(_app.stream),
    );
  }

  GoRouter get router => _router;

  late final List<RouteBase> _routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const AppScreen(),
    ),
    GoRoute(
      path: '/loading',
      builder: (context, state) => const AppLoadingScreen(opaque: false),
    ),
    GoRoute(
      path: '/failure',
      builder: (context, state) => const AppFailureScreen(),
    ),
  ];

  FutureOr<String?> _redirect(BuildContext context, GoRouterState state) {
    // Aquí puedes usar appBloc para determinar la lógica de redirección
    // Por ejemplo, podrías redirigir a una ruta de inicio de sesión si el usuario no está autenticado
    // Si no se cumple ninguna condición de redirección, simplemente devolvemos la ruta actual
    if (_app.state.status.reason.isLoaded) {
      return "/";
    }

    if (_app.state.status.reason.isLoading) {
      return "/loading";
    }

    if (_app.state.status.reason.isFailLoading) {
      return "/failure";
    }

    return null;
  }
}
