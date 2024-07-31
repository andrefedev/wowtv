import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wowtv/src/bloc/bloc.dart';
import 'package:wowtv/src/comm/comm.dart';
import 'package:wowtv/src/conf.dart';
import 'package:wowtv/src/getit.dart';
import 'package:wowtv/src/widgetcom.dart';
import 'package:wowtv/src/features/app/app.dart';

// ignore: constant_identifier_names
const _tabBarDestinations = [
  AppPage(
    name: 'Todos',
    screen: HomeAllPage(),
    iconData: Icons.home_max,
    iconDataSelected: Icons.home_max,
  ),
  AppPage(
    name: ' Series',
    screen: Scaffold(),
    iconData: Icons.home_max,
    iconDataSelected: Icons.home_max,
  ),
  AppPage(
    name: 'Películas',
    screen: Scaffold(),
    iconData: Icons.search,
    iconDataSelected: Icons.search,
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.375;
    return DefaultTabController(
      length: _tabBarDestinations.length,
      child: Scaffold(
        appBar: AppBar(
          // forceMaterialTransparency: true,
          title: Text(
            AppConfig.appName,
            style: GoogleFonts.oswald(fontSize: 28),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              for (var tab in _tabBarDestinations) ...[
                Tab(
                  text: tab.name,
                ),
              ],
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            for (var tab in _tabBarDestinations) ...[
              tab.screen,
            ],
          ],
        ),
      ),
    );
  }
}
