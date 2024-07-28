import 'package:flutter/material.dart';

class CardForm extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const CardForm({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16.0),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const ContinuousRectangleBorder(),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

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

class AppConfirmExit extends StatelessWidget {
  const AppConfirmExit({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return AlertDialog(
      title: const Text(
        "¿Desconectarse?",
        textAlign: TextAlign.center,
      ),
      content: const Text(
        "El servidor se desconectara y tendrás que volver a conectarte.",
        textAlign: TextAlign.justify,
      ),
      contentTextStyle: textTheme.bodyMedium,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(
            "NO",
            style: textTheme.titleSmall,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(
            "OK",
            style: textTheme.titleSmall!.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class RetryList extends StatelessWidget {
  final String? title;

  final String? message;

  final VoidCallback? onPressed;

  const RetryList({
    super.key,
    this.title,
    this.message,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "¡Algo no está bien!",
            style: textTheme.titleMedium,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            message.toString(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8.0,
          ),
          SizedBox(
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                title ?? "Reintentar",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
SnackBar AppSnackBar(String message) {
  return SnackBar(
    behavior: SnackBarBehavior.fixed,
    duration: const Duration(seconds: 6),
    content: Text(
      message,
      textAlign: TextAlign.justify,
    ),
  );
}

class IconPulse extends StatefulWidget {
  final double size;
  final IconData iconData;

  const IconPulse({
    super.key,
    this.size = 24.0,
    required this.iconData,
  });

  @override
  State<IconPulse> createState() => _IconPulseState();
}

class _IconPulseState extends State<IconPulse> with SingleTickerProviderStateMixin {
  late final Animation<double> _sAnimation;
  late final Animation<double> _fAnimation;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Inicializa el controlador de animación
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Duración de la animación (1 segundo)
    );

    // Curva de animación (puedes ajustarla según tus preferencias)
    final CurvedAnimation curve = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Configura la animación de desvanecimiento (fade in)
    _fAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(curve);

    // Configura la animación de escala
    _sAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(curve);

    // Inicia la animación al cargar la pantalla
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fAnimation,
      child: ScaleTransition(
        scale: _sAnimation,
        child: Icon(
          widget.iconData,
          size: widget.size,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class StackPulse extends StatefulWidget {
  final Color color;
  final double size;
  final IconData iconData;

  const StackPulse({
    super.key,
    this.size = 24.0,
    required this.color,
    required this.iconData,
  });

  @override
  State<StackPulse> createState() => _StackPulseState();
}

class _StackPulseState extends State<StackPulse> with SingleTickerProviderStateMixin {
  late final Animation<double> _sAnimation;
  late final Animation<double> _fAnimation;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Inicializa el controlador de animación
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500), // Duración de la animación (1 segundo)
    );

    // Curva de animación (puedes ajustarla según tus preferencias)
    // final CurvedAnimation curve = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    final CurvedAnimation curve = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Configura la animación de desvanecimiento (fade in)
    _fAnimation = Tween<double>(begin: 1.0, end: 0.2).animate(curve);

    // Configura la animación de escala
    _sAnimation = Tween<double>(begin: 0.6, end: 1.2).animate(curve);

    // Inicia la animación al cargar la pantalla
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        FadeTransition(
          opacity: _fAnimation,
          child: ScaleTransition(
            scale: _sAnimation,
            child: Container(
              width: widget.size * 1.25,
              height: widget.size * 1.25,
              decoration: BoxDecoration(
                color: widget.color.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Icon(
          widget.iconData,
          size: widget.size,
          color: widget.color,
        )
      ],
    );
  }
}
