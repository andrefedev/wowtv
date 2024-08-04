import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/app.dart';
import 'src/getit.dart';
import 'src/features/app/app.dart';

Future<void> main() async {
  // Widget initializing
  WidgetsFlutterBinding.ensureInitialized();

  // Force Orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Settings system ui
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  // Admob
  await MobileAds.instance.initialize();

  // Google Fonts
  await GoogleFonts.pendingFonts([
    GoogleFonts.roboto(),
    GoogleFonts.oswald(),
    GoogleFonts.bebasNeue(),
    GoogleFonts.robotoCondensed()
  ]);

  // GetIt Initialized
  setup();
  await getIt.isReady<SharedPreferences>();

  // Run App
  runApp(
    BlocProvider<AppBloc>.value(
      value: getIt(),
      child: const MyApp(),
    ),
  );
}
