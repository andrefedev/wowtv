import 'package:flutter/material.dart';

import 'package:rpctv/src/conf.dart';
import 'package:rpctv/src/features/app/app.dart';
import 'package:rpctv/src/widgetcom.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const _AppHead(),
      body: IndexedStack(
        index: _index,
        children: [
          for (var destination in NavigationBarDestinations) destination.screen,
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          for (var destination in NavigationBarDestinations)
            NavigationDestination(
              label: destination.name,
              icon: Icon(destination.iconData),
              selectedIcon: Icon(destination.iconDataSelected),
            )
        ],
        selectedIndex: _index,
        onDestinationSelected: (index) => setState(() => _index = index),
      ),
    );
  }
}

class _AppHead extends StatelessWidget implements PreferredSizeWidget {
  const _AppHead({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.live_tv,
          color: Colors.blue,
        ),
      ),
      title: Text(
        AppConfig.appName,
        style: textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const StackPulse(
            size: 24.0,
            color: Colors.blue,
            iconData: Icons.fiber_smart_record,
          ),
        ),
      ],
      // bottom: Tab,
    );
  }
}
