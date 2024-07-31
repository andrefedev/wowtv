import 'package:flutter/material.dart';
import 'package:wowtv/src/api/data.dart';
import 'package:wowtv/src/bloc/bloc.dart';
import 'package:wowtv/src/comm/comm.dart';
import 'package:wowtv/src/getit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAllPage extends StatefulWidget {
  const HomeAllPage({super.key});

  @override
  State<HomeAllPage> createState() => _HomeAllPageState();
}

class _HomeAllPageState extends State<HomeAllPage> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _FilmOrderByReleaseDate(),
            create: (_) => getIt<TvFilmFilterBloc>()
              ..add(const TvFilmFilterEventSelectedMain())
              ..add(const TvFilmFilterEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _ShowTop20OrderByRating(),
            create: (_) => getIt<TvFilmFilterBloc>()..add(const TvFilmFilterEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _FilmTop20OrderByRating(),
            create: (_) => getIt<TvFilmFilterBloc>()..add(const TvFilmFilterEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const _TvContinuePlay(
            key: Key("_TvContinuePlay"),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const _TvMyListToPlay(
            key: Key("_TvMyListToPlay"),
          ),
        ],
      ),
    );
  }
}

class _FilmOrderByReleaseDate extends StatelessWidget {
  const _FilmOrderByReleaseDate({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final height = media.size.height * 0.275;
    return BlocBuilder<TvFilmFilterBloc, TvFilmFilterState>(
      builder: (context, state) {
        return state.status.reason.isFetching
            ? SizedBox(
                height: height,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => const TvFilmCoverSkeleton(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 3 / 2,
                    // maxCrossAxisExtent
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              )
            : SizedBox(
                height: height,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: state.items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => TvFilmCover(state.items[index]),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 3 / 2,
                  ),
                ),
              );
      },
    );
  }
}

class _ShowTop20OrderByRating extends StatelessWidget {
  const _ShowTop20OrderByRating({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.20;
    return BlocBuilder<TvFilmFilterBloc, TvFilmFilterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Las 10 series más populares de la semana",
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            state.status.reason.isFetching
                ? SizedBox(
                    height: mediaQueryHeight,
                    child: GridView.builder(
                      // physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (_, index) => const TvFilmCoverSkeleton(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 3 / 2,
                        // maxCrossAxisExtent
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                : SizedBox(
                    height: mediaQueryHeight,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: state.items.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => TvFilmCover(state.items[index]),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 3 / 2,
                      ),
                    ),
                  ),
          ],
        );
      },
    );
  }
}

class _FilmTop20OrderByRating extends StatelessWidget {
  const _FilmTop20OrderByRating({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.20;
    return BlocBuilder<TvFilmFilterBloc, TvFilmFilterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Las 10 películas más populares de la semana",
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            state.status.reason.isFetching
                ? SizedBox(
                    height: mediaQueryHeight,
                    child: GridView.builder(
                      reverse: true,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: 20,
                      shrinkWrap: true,
                      itemBuilder: (_, index) => const TvFilmCoverSkeleton(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 3 / 2,
                        // maxCrossAxisExtent
                      ),
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                : SizedBox(
                    height: mediaQueryHeight,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: state.items.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => TvFilmCover(state.items[index]),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 3 / 2,
                      ),
                    ),
                  ),
          ],
        );
      },
    );
  }
}

class _TvContinuePlay extends StatelessWidget {
  const _TvContinuePlay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Continuar viendo",
        style: textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _TvMyListToPlay extends StatelessWidget {
  const _TvMyListToPlay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Mi lista",
        style: textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
