import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wowtv/src/conf.dart';
import 'package:wowtv/src/getit.dart';
import 'package:wowtv/src/comm/comm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.375;
    return const Scaffold(
      body: _HomeBody(),
      appBar: _HomeHead(),
    );
  }
}

class _HomeHead extends StatelessWidget implements PreferredSizeWidget {
  const _HomeHead({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppConfig.appName,
        style: GoogleFonts.oswald(fontSize: 28),
      ),
      actions: [
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
            Icons.star,
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
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocProvider<TvFilmMainBloc>(
            child: const _HomeTvFilmMain(),
            create: (_) => getIt<TvFilmMainBloc>()..add(const TvFilmMainEventFetched()),
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _HomeTvFilmReleaseDate(),
            create: (_) => getIt<TvFilmFilterBloc>()
              ..add(const TvFilmFilterEventSelectedMovieReleaseDate())
              ..add(const TvFilmFilterEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _HomeTvFilmSerieRatingToday(),
            create: (_) => getIt<TvFilmFilterBloc>()
              ..add(const TvFilmFilterEventSelectedSerieRatingToday())
              ..add(const TvFilmFilterEventFetched()),
          ),
          const SizedBox(
            height: 16.0,
          ),
          BlocProvider<TvFilmFilterBloc>(
            child: const _HomeTvFilmMovieRatingToday(),
            create: (_) => getIt<TvFilmFilterBloc>()
              ..add(const TvFilmFilterEventSelectedMovieRatingToday())
              ..add(const TvFilmFilterEventFetched()),
          ),
        ],
      ),
    );
  }
}

class _HomeTvFilmMain extends StatelessWidget {
  const _HomeTvFilmMain({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.415;
    return BlocBuilder<TvFilmMainBloc, TvFilmMainState>(
      builder: (context, state) {
        if (state.status.reason.isFetching) {
          return Container(
            width: double.infinity,
            height: mediaQueryHeight,
            padding: const EdgeInsets.all(16.0),
            child: const TvFilmMainCoverSkeleton(),
          );
        }

        if (state.status.reason.isFailFetching) {
          return const SizedBox.shrink();
        }

        return state.item != null
            ? SizedBox(
                height: mediaQueryHeight,
                child: Container(
                  width: double.infinity,
                  height: mediaQueryHeight,
                  padding: const EdgeInsets.all(16.0),
                  child: TvFilmMainCover(state.item!),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}

class _HomeTvFilmReleaseDate extends StatelessWidget {
  const _HomeTvFilmReleaseDate({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
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

class _HomeTvFilmSerieRatingToday extends StatelessWidget {
  const _HomeTvFilmSerieRatingToday({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaHeight = mediaQuery.size.height * 0.25;
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

class _HomeTvFilmMovieRatingToday extends StatelessWidget {
  const _HomeTvFilmMovieRatingToday({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final mediaQuery = MediaQuery.of(context);
    final mediaHeight = mediaQuery.size.height * 0.25;
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

// class _HomeTvFilm extends StatelessWidget {
//   const _FilmOrderByReleaseDate({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context);
//     final height = media.size.height * 0.275;
//     return BlocBuilder<TvFilmFilterBloc, TvFilmFilterState>(
//       builder: (context, state) {
//         return state.status.reason.isFetching
//             ? SizedBox(
//           height: height,
//           child: GridView.builder(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             itemCount: 10,
//             shrinkWrap: true,
//             itemBuilder: (_, index) => const TvFilmCoverSkeleton(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 1,
//               mainAxisSpacing: 8.0,
//               crossAxisSpacing: 8.0,
//               childAspectRatio: 3 / 2,
//               // maxCrossAxisExtent
//             ),
//             scrollDirection: Axis.horizontal,
//           ),
//         )
//             : SizedBox(
//           height: height,
//           child: GridView.builder(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             itemCount: state.items.length,
//             shrinkWrap: true,
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (_, index) => TvFilmCover(state.items[index]),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 1,
//               mainAxisSpacing: 8.0,
//               crossAxisSpacing: 8.0,
//               childAspectRatio: 3 / 2,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
