import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String title;
  final bool isDense;
  final bool disable;
  final bool loading;
  final IconData? prefixIcon;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Color? colorPrimary;
  final Color? colorOnPrimary;
  final Color? colorOnSurface;

  const SimpleButton({
    super.key,
    required this.title,
    this.isDense = false,
    this.disable = false,
    this.loading = false,
    this.prefixIcon,
    this.onPressed,
    this.onLongPress,
    this.colorPrimary,
    this.colorOnPrimary,
    this.colorOnSurface,
  });

  const SimpleButton.dense({
    super.key,
    required this.title,
    this.isDense = true,
    this.disable = false,
    this.loading = false,
    this.prefixIcon,
    this.onPressed,
    this.onLongPress,
    this.colorPrimary,
    this.colorOnPrimary,
    this.colorOnSurface,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    // ignore_for_file: no_leading_underscores_for_local_identifiers
    final _colorPrimary = colorPrimary ?? colorScheme.primary;
    final _colorOnPrimary = colorOnPrimary ?? colorScheme.onPrimary;
    final _colorOnSurface = colorOnSurface ?? colorScheme.onSurface;

    final shape = ContinuousRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    );

    Size? minimumSize;
    if (isDense) {
      minimumSize = const Size(64.0, 45.0);
    } else {
      minimumSize = const Size(64.0, 50.0);
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onLongPress: onLongPress,
        onPressed: disable || loading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          shape: shape,
          minimumSize: minimumSize,
          backgroundColor: _colorPrimary,
          foregroundColor: _colorOnPrimary,
          disabledForegroundColor: _colorOnSurface,
        ),
        child: Builder(
          builder: (BuildContext context) {
            if (loading) {
              return SizedBox(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  backgroundColor: _colorPrimary,
                  color: _colorOnPrimary,
                ),
              );
            }

            if (prefixIcon != null) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    prefixIcon,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    title,
                    // style: textTheme.bodyLarge,
                  ),
                ],
              );
            }

            return Text(
              title,
              // style: textTheme.bodyLarge,
            );
          },
        ),
      ),
    );
  }
}