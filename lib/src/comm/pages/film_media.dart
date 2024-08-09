import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/comm/comm.dart';

class TvFilmMediaCover extends StatelessWidget {
  final TvFilmVideo video;

  const TvFilmMediaCover(this.video, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          ImageNetwork(
            'https://img.youtube.com/vi/${video.youtube}/maxresdefault.jpg',
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Text(
              video.type,
            ),
          ),
        ],
      ),
    );
  }
}

class TvFilmMediaSkeleton extends StatelessWidget {
  const TvFilmMediaSkeleton({super.key});

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
