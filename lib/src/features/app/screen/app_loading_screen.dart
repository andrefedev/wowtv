import 'package:wowtv/src/conf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Material(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 32.0,
              child: _IconVideoPulse(
                key: Key("_IconVideoPulse"),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              width: 80.0,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              AppConfig.appName,
              style: GoogleFonts.oswald(fontSize: 28),
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
          child:  const Icon(
            Icons.video_collection,
            size: 28.0,
            // color: Colors.red,
          ),
        );
      },
    );
  }
}
