import 'package:flutter/material.dart';

import 'conf.dart';
import 'theme.dart';
import 'getit.dart';
import 'router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      title: AppConfig.appName,
      themeMode: ThemeMode.dark,
     routerConfig: getIt<AppGoRouter>().router,
    );
  }
}
