import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rpctv/src/widgetcom.dart';
import 'package:rpctv/src/features/app/app.dart';

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
                    size: 24.0,
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
