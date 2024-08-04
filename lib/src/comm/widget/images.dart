import 'package:flutter/material.dart';

const _placeholder = 'assets/images/placeholder.jpg';

class ImageNetwork extends StatelessWidget {
  final Size size;
  final String? source;

  const ImageNetwork({
    super.key,
    this.size = const Size(double.infinity, double.infinity),
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    // FadeInImage
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return source == null || source!.isEmpty
        ? SizedBox(
            width: size.width,
            height: size.height,
            child: Image.asset(_placeholder, fit: BoxFit.cover),
          )
        : Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.network(
              source!,
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

class ImageNetworkWithCount extends StatelessWidget {
  final Size size;
  final String source;
  final int quantity;

  const ImageNetworkWithCount({
    super.key,
    required this.size,
    required this.source,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: ImageNetwork(
              size: size,
              source: source,
            ),
          ),
        ),
        Positioned(
          top: -5,
          right: 0,
          child: Container(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 2.0,
              horizontal: 4.0,
            ),
            constraints: const BoxConstraints(
              minWidth: 28.0,
              minHeight: 28.0,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1.0,
                color: Colors.white,
              ),
            ),
            child: Text(
              "quantity.thousand",
              style: textTheme.titleSmall!.copyWith(
                color: Colors.black87,
              ),
            ),
          ),
        )
      ],
    );
  }
}
