import 'package:flutter/material.dart';

class AppTheme {
  static final dark = ThemeData(
    fontFamily: "Roboto",
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.red,
    visualDensity: VisualDensity.adaptivePlatformDensity,

    // ThemeData
    appBarTheme: AppTheme.appBarTheme,
    // tabBarTheme: AppTheme.tabBarTheme,

    inputDecorationTheme: inputDecorationTheme,
    // snackBarTheme:
  );

  static const  appBarTheme = AppBarTheme(
    elevation: 2,
    // backgroundColor: Colors.red.shade900,
    // shadowColor: Colors.black12,
    // foregroundColor: Colors.white,
  );

  // static const tabBarTheme = TabBarTheme(
  //   labelColor: Colors.black,
  // );

  static const inputDecorationTheme = InputDecorationTheme();
}
