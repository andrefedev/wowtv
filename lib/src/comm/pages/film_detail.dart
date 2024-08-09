import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wowtv/src/getit.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/comm/comm.dart';

class TvFilmDetailPage extends StatelessWidget {
  final TvFilm film;

  const TvFilmDetailPage(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<TvFilmImageBloc>(param1: film)..add(const TvFilmImageEventFetched()),
        ),
        BlocProvider(
          create: (_) => getIt<TvFilmMediaBloc>(param1: film)..add(const TvFilmMediaEventFetched()),
        ),
        BlocProvider(
          create: (_) => getIt<TvFilmDetailBloc>(param1: film)..add(const TvFilmDetailEventFetched()),
        ),
      ],
      child: const _TvFilmDetail(),
    );
  }
}

class _TvFilmDetail extends StatelessWidget {
  const _TvFilmDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _TvFilmDetailBody(),
      appBar: _TvFilmDetailHead(),
    );
  }
}

class _TvFilmDetailHead extends StatelessWidget implements PreferredSizeWidget {
  const _TvFilmDetailHead({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Eliminar la sombra
      actions: [
        IconButton(
          icon: const Icon(
            Icons.share,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.playlist_add,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _TvFilmDetailBody extends StatelessWidget {
  const _TvFilmDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvFilmDetailBloc, TvFilmDetailState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TvFilmDetailPoster(
                state.item,
              ),
              const SizedBox(
                height: 8.0,
              ),
              _TvFilmDetailBasic(
                state.item,
              ),
              const SizedBox(
                height: 8.0,
              ),
              _TvFilmDetailAction(
                state.item,
              ),
              const SizedBox(
                height: 8.0,
              ),
              _TvFilmDetailOverview(
                state.item,
              ),
              const _TvFilmDetailMedia(
                key: Key("asdasdasd"),
              ),
              const _TvFilmImageMedia(
                key: Key("_TvFilmImageMedia"),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TvFilmDetailPoster extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailPoster(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.375;
    return SizedBox(
      width: double.infinity,
      height: mediaQueryHeight,
      child: ImageNetwork(film.backdropPath),
    );
  }
}

class _TvFilmDetailBasic extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailBasic(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            film.type.label!.toUpperCase(),
            style: GoogleFonts.oswald(
              fontSize: 14.0,
              letterSpacing: 4.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            film.name1,
            style: GoogleFonts.robotoCondensed(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "${film.releaseDate.toDateTime().year}",
                  style: textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (film.runtime != 0)
                  TextSpan(
                    text: "  ${film.formatRuntime}  ",
                    style: textTheme.bodyMedium!.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                TextSpan(
                  text: film.genres.join(", "),
                  style: textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TvFilmDetailAction extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailAction(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
              ),
              label: Text(
                "Ver",
                style: GoogleFonts.roboto(
                    // fontSize: 18.0,
                    ),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.file_download,
              ),
              label: Text(
                "Descargar",
                style: GoogleFonts.roboto(),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.white10,
              ),
            ),
          ),
        ],
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       CircleAvatar(
    //         radius: 22.0,
    //         backgroundColor: colorScheme.inverseSurface,
    //         child: CircleAvatar(
    //           child: Stack(
    //             children: [
    //               CircularProgressIndicator(
    //                 value: 0.4,
    //                 color: colorScheme.primary,
    //                 backgroundColor: colorScheme.onPrimary,
    //               ),
    //               Positioned.fill(
    //                 child: Center(
    //                   child: Stack(
    //                     clipBehavior: Clip.none, // Permite que los widgets se dibujen fuera de los límites del contenedor
    //                     children: [
    //                       Text(
    //                         '15',
    //                         style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    //                       ),
    //                       Positioned(
    //                         right: 0, // Ajusta este valor para mover el porcentaje a la derecha
    //                         top: 0,  // Ajusta este valor para mover el porcentaje hacia arriba
    //                         child: Text(
    //                           '%',
    //                           style: TextStyle(fontSize: 3, fontWeight: FontWeight.bold),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       const SizedBox(
    //         width: 16.0,
    //       ),
    //       IconButton.filledTonal(
    //         onPressed: () {},
    //         iconSize: 32.0,
    //         icon: Icon(Icons.playlist_add),
    //       ),
    //       const SizedBox(
    //         width: 16.0,
    //       ),
    //       IconButton.filledTonal(
    //         onPressed: () {},
    //         iconSize: 32.0,
    //         icon: Icon(Icons.download_rounded),
    //       ),
    //       const SizedBox(
    //         width: 16.0,
    //       ),
    //       IconButton.filledTonal(
    //         onPressed: () {},
    //         iconSize: 32.0,
    //         icon: Icon(Icons.play_arrow),
    //       ),
    //     ],
    //   ),
    // );
  }
}

class _TvFilmDetailOverview extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailOverview(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (film.tagline.isNotEmpty)
            Text(
              film.tagline,
              style: textTheme.bodyMedium!.copyWith(
                color: Colors.white54,
              ),
            ),
          Text.rich(
            textAlign: TextAlign.justify,
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: film.overview,
                  style: textTheme.bodyMedium!.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TvFilmDetailMedia extends StatelessWidget {
  const _TvFilmDetailMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.175;
    return BlocBuilder<TvFilmMediaBloc, TvFilmMediaState>(
      builder: (context, state) {
        if (state.status.reason.isFetching) {
          return Column(
            children: [
              SizedBox(
                height: 16.0,
              ),
              Divider(
                height: 0.0,
              ),
              SizedBox(
                height: mediaQueryHeight,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => const TvFilmCoverSkeleton(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 2.25 / 4,
                    // maxCrossAxisExtent
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          );
        }

        if (state.status.reason.isFailFetching) {
          return const SizedBox.shrink();
        }

        return state.items.isEmpty
            ? const SizedBox.shrink()
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Videos",
                  ),
                  SizedBox(
                    height: mediaQueryHeight,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: state.items.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, i) => TvFilmMediaCover(state.items[i]),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 2.25 / 4,
                      ),
                    ),
                  ),
                ],
              );
      },
    );
  }
}

class _TvFilmImageMedia extends StatelessWidget {
  const _TvFilmImageMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.175;
    return BlocBuilder<TvFilmImageBloc, TvFilmImageState>(
      builder: (context, state) {
        if (state.status.reason.isFetching) {
          return Column(
            children: [
              SizedBox(
                height: 16.0,
              ),
              Divider(
                height: 0.0,
              ),
              SizedBox(
                height: mediaQueryHeight,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => const TvFilmImageSkeleton(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 2.25 / 4,
                    // maxCrossAxisExtent
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          );
        }

        if (state.status.reason.isFailFetching) {
          return const SizedBox.shrink();
        }

        return state.items.isEmpty
            ? const SizedBox.shrink()
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.0,
                  ),
                  const Divider(
                    height: 0.0,
                  ),
                  Text(
                    "Imagenes",
                  ),
                  SizedBox(
                    height: mediaQueryHeight,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      itemCount: state.items.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, i) => TvFilmImageCover(state.items[i]),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        childAspectRatio: 2.25 / 4,
                      ),
                    ),
                  ),
                ],
              );
      },
    );
  }
}
