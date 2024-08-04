import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/comm/comm.dart';
import 'package:google_fonts/google_fonts.dart';

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

class TvFilmMainCover extends StatelessWidget {
  final TvFilm film;

  const TvFilmMainCover(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                ImageNetwork(
                  source: "https://storage.googleapis.com/wowtv_images/${film.backdpPath2}",
                ),

                // Gradiente negro con opacidad
                Positioned.fill(
                  bottom: 10.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: constraints.maxHeight / 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Texto blanco sobre el gradiente
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          film.name1,
                          style: textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (film.genres != null)
                          Text(
                            film.genres!.join(" - "),
                            style: textTheme.titleSmall,
                          ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.play_circle,
                                ),
                                label: Text(
                                  "Reproducir",
                                  style: textTheme.titleMedium,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Expanded(
                              child: ElevatedButton.icon(
                                icon: const Icon(
                                  Icons.playlist_add,
                                ),
                                label: Text(
                                  "Mi lista",
                                  style: textTheme.titleMedium,
                                ),
                                onPressed: () {
                                  debugPrint("Hi");
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class TvFilmMainCoverSkeleton extends StatelessWidget {
  const TvFilmMainCoverSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          // Fondo de shimmer
          children: [
            Shimmer.fromColors(
              baseColor: colorScheme.primary.withOpacity(0.1),
              highlightColor: colorScheme.primary.withOpacity(0.175),
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            // Contenido superpuesto
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth / 1.75,
                      height: constraints.maxHeight / 15,
                      child: Shimmer.fromColors(
                        baseColor: colorScheme.primary.withOpacity(0.125),
                        highlightColor: colorScheme.primary.withOpacity(0.195),
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: constraints.maxWidth / 1.25,
                      height: constraints.maxHeight / 18,
                      child: Shimmer.fromColors(
                        baseColor: colorScheme.primary.withOpacity(0.125),
                        highlightColor: colorScheme.primary.withOpacity(0.195),
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: constraints.maxHeight / 12,
                            child: Shimmer.fromColors(
                              baseColor: colorScheme.primary.withOpacity(0.125),
                              highlightColor: colorScheme.primary.withOpacity(0.195),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: constraints.maxHeight / 12,
                            child: Shimmer.fromColors(
                              baseColor: colorScheme.primary.withOpacity(0.125),
                              highlightColor: colorScheme.primary.withOpacity(0.195),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Shimmer.fromColors(
        baseColor: colorScheme.primary.withOpacity(0.1),
        highlightColor: colorScheme.primary.withOpacity(0.175),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 30.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

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
