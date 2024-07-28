import 'package:flutter/material.dart';

class AppLoadingScreen extends StatelessWidget {
  final bool opaque;

  const AppLoadingScreen({
    super.key,
    this.opaque = false,
  });

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const AppLoadingScreen());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Color color = Colors.white;
    if (opaque) color = Colors.black54;

    return Material(
      color: color,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 32.0,
              backgroundColor: Colors.black12,
              child: _IconVideoPulse(
                key: Key("_IconVideoPulse"),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              width: 60.0,
              child: LinearProgressIndicator(
                color: colorScheme.secondary,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconVideoPulse extends StatefulWidget {
  const _IconVideoPulse({super.key});

  @override
  State<_IconVideoPulse> createState() => _IconVideoPulseState();
}

class _IconVideoPulseState extends State<_IconVideoPulse> with SingleTickerProviderStateMixin {
  late final Animation<double> _animation;
  late final AnimationController _controller;

  Duration get duration => const Duration(milliseconds: 1000);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: duration,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      end: 1.2,
      begin: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child:  Icon(
            Icons.video_collection,
            size: 28.0,
            color: Colors.red,
          ),
        );
      },
    );
  }
}
