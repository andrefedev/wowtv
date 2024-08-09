import 'package:flutter/material.dart';

class AppTheme {
  static final dark = ThemeData(
    fontFamily: "Roboto",
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
      brightness: Brightness.dark,
    ).copyWith(
      primary: Colors.green,
      secondary: Colors.blue,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,

    // ThemeData
    appBarTheme: AppTheme.appBarTheme,
    // tabBarTheme: AppTheme.tabBarTheme,

    inputDecorationTheme: inputDecorationTheme,
    // snackBarTheme:
  );

  static const appBarTheme = AppBarTheme(
    elevation: 2,
    // backgroundColor: Colors.w,
    // shadowColor: Colors.black12,
    // foregroundColor: Colors.white,
  );

  // static const tabBarTheme = TabBarTheme(
  //   labelColor: Colors.black,
  // );

  static const inputDecorationTheme = InputDecorationTheme();
}
