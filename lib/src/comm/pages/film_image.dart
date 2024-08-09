import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/comm/comm.dart';

class TvFilmImageCover extends StatelessWidget {
  final TvFilmImage image;

  const TvFilmImageCover(this.image, {super.key});

  @override
  Widget build(BuildContext context) {

    debugPrint("image ${image.filePath2}");

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          ImageNetwork(
            image.filePath2,
          ),
        ],
      ),
    );
  }
}

class TvFilmImageSkeleton extends StatelessWidget {
  const TvFilmImageSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Shimmer.fromColors(
        baseColor: colorScheme.primary.withOpacity(0.1),
        highlightColor: colorScheme.primary.withOpacity(0.175),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}