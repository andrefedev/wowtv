import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

import 'package:wowtv/src/features/app/app.dart';
import 'package:wowtv/src/features/settings/settings.dart';

class AppPage extends Equatable {
  final String name;
  final Widget screen;
  final IconData? iconData;
  final IconData? iconDataSelected;

  const AppPage({
    required this.name,
    required this.screen,
    this.iconData,
    this.iconDataSelected,
  });

  @override
  List<Object?> get props => [name, screen, iconData, iconDataSelected];
}

// ignore: constant_identifier_names
const NavigationBarDestinations = [
  AppPage(
    name: 'Inicio',
    screen: HomeScreen(),
    iconData: Icons.home_max,
    iconDataSelected: Icons.home_max,
  ),
  AppPage(
    name: 'Mi lista',
    screen: Scaffold(),
    iconData: Icons.playlist_play,
    iconDataSelected: Icons.star_border,
  ),
  AppPage(
    name: 'Mi Cuenta',
    screen: SettingScreen(),
    iconData: Icons.account_circle,
    iconDataSelected: Icons.account_circle,
  ),
];