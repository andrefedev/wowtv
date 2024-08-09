import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  final String source;
  final String? placeholder;

  const ImageNetwork(
    this.source, {
    super.key,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    // FadeInImage
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final colorBoxDecoration = colorScheme.primary.withOpacity(0.1);
    return source.isEmpty
        ? const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SizedBox.shrink(),
          )
        : Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: colorBoxDecoration,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.network(
              source,
              fit: BoxFit.cover,
              loadingBuilder: (_, child, progress) => _ImageNetworkLoading(child, progress),
            ),
          );
  }
}

class _ImageNetworkLoading extends StatelessWidget {
  final Widget child;
  final ImageChunkEvent? progress;

  const _ImageNetworkLoading(this.child, this.progress, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget widget;
    if (progress == null) {
      widget = child;
    } else {
      widget = Center(
        child: SizedBox(
          width: 25.0,
          height: 25.0,
          child: CircularProgressIndicator(
              value: progress!.expectedTotalBytes != null
                  ? progress!.cumulativeBytesLoaded / progress!.expectedTotalBytes!
                  : null),
        ),
      );
    }

    return widget;
  }
}

class _ImageNetworkError extends StatelessWidget {
  const _ImageNetworkError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.error,
        color: Colors.red,
      ),
    );
  }
}
