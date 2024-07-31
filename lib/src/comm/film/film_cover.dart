import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/comm/comm.dart';

class TvFilmCover extends StatelessWidget {
  final TvFilm film;

  const TvFilmCover(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: [
          ImageNetwork(
            source: "https://storage.googleapis.com/wowtv_images/${film.posterPath2}",
          ),
        ],
      ),
    );
  }
}

class TvFilmCoverSkeleton extends StatelessWidget {
  const TvFilmCoverSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Shimmer.fromColors(
        baseColor: colorScheme.primary.withOpacity(0.1),
        highlightColor: colorScheme.primary.withOpacity(0.15),
        child: Container(
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
