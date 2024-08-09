import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wowtv/src/getit.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/comm/comm.dart';

final SliverOverlapAbsorberHandle _sliverOverlapAbsorberHandle = SliverOverlapAbsorberHandle();

class TvFilmDetailPage extends StatelessWidget {
  final TvFilm film;

  const TvFilmDetailPage(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<TvFilmDetailBloc>(param1: film)..add(const TvFilmDetailEventFetched()),
        ),
        BlocProvider(
          create: (_) => getIt<TvFilmMediaBloc>(param1: film)..add(const TvFilmMediaEventFetched()),
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
    return const _TvFilmDetailBody();
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
          icon: Icon(
            Icons.bug_report,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

class ContainerDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  const ContainerDelegate(this.tabBar);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class _TvFilmDetailBody extends StatelessWidget {
  const _TvFilmDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.3575;
    return BlocBuilder<TvFilmDetailBloc, TvFilmDetailState>(
      builder: (context, state) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: NestedScrollView(
              physics: const BouncingScrollPhysics(),
              headerSliverBuilder: (context, value) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    sliver: SliverAppBar(
                      pinned: true,
                      stretch: false,
                      // forceElevated: value,
                      expandedHeight: mediaQueryHeight,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.playlist_add),
                        ),
                      ],
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: [
                            ImageNetwork(
                              state.item.backdropPath,
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: mediaQueryHeight / 5,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.4),
                                        Colors.black.withOpacity(0.6),
                                        Colors.black.withOpacity(0.8),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      bottom: TabBar.secondary(
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.play_arrow,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.people,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.video_collection,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.collections,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  Builder(builder: (context) {
                    return CustomScrollView(
                      key: const PageStorageKey<String>("test1"),
                      slivers: [
                        SliverOverlapInjector(
                          // This is the flip side of the SliverOverlapAbsorber
                          // above.
                          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 8.0,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: _TvFilmDetailBasic(
                            state.item,
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 8.0,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: _TvFilmDetailAction(
                            state.item,
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(
                            height: 8.0,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: _TvFilmDetailOverview(
                            state.item,
                          ),
                        ),
                      ],
                    );
                  }),
                  Builder(builder: (context) {
                    return CustomScrollView(
                      key: const PageStorageKey<String>("test2"),
                      slivers: [
                        SliverOverlapInjector(
                          // This is the flip side of the SliverOverlapAbsorber
                          // above.
                          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          sliver: SliverFixedExtentList(
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                              childCount: 30,
                              (BuildContext context, int index) {
                                // This builder is called for each child.
                                // In this example, we just number each list item.
                                return ListTile(
                                  title: Text('Item $index'),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  Builder(
                    builder: (context) {
                      return CustomScrollView(
                        key: PageStorageKey<String>("test3"),
                        slivers: [
                          SliverOverlapInjector(
                            // This is the flip side of the SliverOverlapAbsorber
                            // above.
                            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            sliver: SliverFixedExtentList(
                              itemExtent: 48.0,
                              delegate: SliverChildBuilderDelegate(
                                childCount: 100,
                                (BuildContext context, int index) {
                                  // This builder is called for each child.
                                  // In this example, we just number each list item.
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return CustomScrollView(
                        key: PageStorageKey<String>("test4"),
                        slivers: [
                          SliverOverlapInjector(
                            // This is the flip side of the SliverOverlapAbsorber
                            // above.
                            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            sliver: SliverFixedExtentList(
                              itemExtent: 48.0,
                              delegate: SliverChildBuilderDelegate(
                                childCount: 100,
                                (BuildContext context, int index) {
                                  // This builder is called for each child.
                                  // In this example, we just number each list item.
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _TvFilmDetailImage extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailImage(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.275;
    return TabBar(
      tabs: [
        Tab(
          text: "asdasd",
        ),
        Tab(
          text: "asdasd",
        ),
      ],
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

class _TvFilmDetailTabBarMenu extends StatelessWidget {
  const _TvFilmDetailTabBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            child: const TabBar.secondary(
              tabs: [
                Tab(
                  icon: Icon(Icons.video_library),
                ),
                Tab(
                  text: "Similar",
                ),
                Tab(
                  text: "Casting",
                ),
                Tab(
                  text: "Trailers",
                ),
                Tab(
                  text: "Imagenes",
                ),
              ],
              isScrollable: true,
              tabAlignment: TabAlignment.start,
            ),
          ),
          Flexible(
            child: TabBarView(
              children: [
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index in Tab 1'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index in Tab 2'),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Item $index in Tab 3'),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
