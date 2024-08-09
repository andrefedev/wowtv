import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wowtv/src/api/api.dart';

import 'package:wowtv/src/conf.dart';
import 'package:wowtv/src/getit.dart';
import 'package:wowtv/src/comm/comm.dart';

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
          BlocProvider<TvFilmMainBloc>(
            child: const _HomeAllMain(),
            create: (_) => getIt<TvFilmMainBloc>()..add(const TvFilmMainEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _HomeAllTvFilmReleaseDate(),
            create: (_) => getIt<TvFilmFilterBloc>()..add(TvFilmFilterEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmPopularBloc>(
            child: const _HomeAllTvFilmSerieRatingOfTheDay(),
            create: (_) => getIt<TvFilmPopularBloc>()..add(const TvFilmPopularEventFetched(TvType.SERIE)),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmPopularBloc>(
            child: const _HomeAllTvFilmMovieRatingOfTheDay(),
            create: (_) => getIt<TvFilmPopularBloc>()..add(const TvFilmPopularEventFetched(TvType.MOVIE)),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}

class _HomeAllMain extends StatelessWidget {
  final bool refreshed;

  const _HomeAllMain({
    super.key,
    this.refreshed = false,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.415;
    return BlocBuilder<TvFilmMainBloc, TvFilmMainState>(
      builder: (context, state) {
        if (state.status.reason.isFetching) {
          return SizedBox(
            width: double.infinity,
            height: mediaQueryHeight,
            // padding: const EdgeInsets.all(16.0),
            child: const TvFilmMainCoverSkeleton(),
          );
        }

        if (state.status.reason.isFailFetching) {
          return const SizedBox.shrink();
        }

        return state.item != null
            ? SizedBox(
                height: mediaQueryHeight,
                child: SizedBox(
                  width: double.infinity,
                  height: mediaQueryHeight,
                  // padding: const EdgeInsets.all(16.0),
                  child: TvFilmMainCover(state.item!),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}

class _HomeAllTvFilmReleaseDate extends StatelessWidget {
  const _HomeAllTvFilmReleaseDate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaHeight = mediaQuery.size.height * 0.275;
    return BlocBuilder<TvFilmFilterBloc, TvFilmFilterState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: Text(
                "Nuevos estrenos",
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            state.statusx.reason.isFetching
                ? SizedBox(
                    height: mediaHeight,
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
                    height: mediaHeight,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: state.results.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => TvFilmCover(state.results[index]),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 3 / 2,
                      ),
                    ),
                  )
          ],
        );
      },
    );
  }
}

class _HomeAllTvFilmSerieRatingOfTheDay extends StatelessWidget {
  const _HomeAllTvFilmSerieRatingOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaHeight = mediaQuery.size.height * 0.25;
    return BlocBuilder<TvFilmPopularBloc, TvFilmPopularState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: Text(
                "Las 10 series más vistas hoy",
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            state.status.reason.isFetching
                ? SizedBox(
                    height: mediaHeight,
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
                    height: mediaHeight,
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
                  )
          ],
        );
      },
    );
  }
}

class _HomeAllTvFilmMovieRatingOfTheDay extends StatelessWidget {
  const _HomeAllTvFilmMovieRatingOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaHeight = mediaQuery.size.height * 0.25;
    return BlocBuilder<TvFilmPopularBloc, TvFilmPopularState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: Text(
                "Las 10 películas mas vistas hoy",
                style: GoogleFonts.roboto(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            state.status.reason.isFetching
                ? SizedBox(
                    height: mediaHeight,
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
                    height: mediaHeight,
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
                  )
          ],
        );
      },
    );
  }
}

// ##################
// # HOME ALL TITLE #
// ##################

class HomeAllTitle extends StatelessWidget {
  const HomeAllTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                AppConfig.appName,
                style: GoogleFonts.oswald(fontSize: 28),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Text(
                "Todo",
                style: GoogleFonts.oswald(fontSize: 12),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Transform.translate(
            offset: const Offset(16, 0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.share,
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Scaffold(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.admin_panel_settings,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Scaffold(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
