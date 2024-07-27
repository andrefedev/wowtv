import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    fontFamily: "Roboto",
    colorSchemeSeed: Colors.blue,

    visualDensity: VisualDensity.adaptivePlatformDensity,

    // ThemeData
    appBarTheme: AppTheme.appBarTheme,
    // tabBarTheme: AppTheme.tabBarTheme,

    inputDecorationTheme: inputDecorationTheme,
    // snackBarTheme:
  );

  static const appBarTheme = AppBarTheme(
    elevation: 2,
    centerTitle: true,
    shadowColor: Colors.black12,
    // foregroundColor: Colors.white,
  );

  // static const tabBarTheme = TabBarTheme(
  //   labelColor: Colors.black,
  // );

  static const inputDecorationTheme = InputDecorationTheme();
}
