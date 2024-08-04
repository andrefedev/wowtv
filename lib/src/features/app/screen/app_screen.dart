import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wowtv/src/conf.dart';
import 'package:wowtv/src/widgetcom.dart';
import 'package:wowtv/src/features/app/app.dart';

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

// ##################
// # LOADING SCREEN #
// ##################

// ##################
// # FAILURE SCREEN #
// ##################

class AppFailureScreen extends StatelessWidget {
  const AppFailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Material(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 32.0,
                  child: Icon(
                    Icons.heart_broken,
                    size: 28.0,
                  ),
                ),
                RetryList(
                  message: state.status.err,
                  onPressed: () {
                    context.read<AppBloc>()
                      ..add(const AppEventReseted())
                      ..add(const AppEventInited());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}