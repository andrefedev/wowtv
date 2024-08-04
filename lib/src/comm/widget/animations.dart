import 'package:flutter/material.dart';

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