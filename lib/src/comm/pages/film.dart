import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wowtv/src/comm/pages/film_basic.dart';

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
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.3575;
    return BlocBuilder<TvFilmDetailBloc, TvFilmDetailState>(
      builder: (context, state) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: NestedScrollView(
              // physics: const BouncingScrollPhysics(),
              headerSliverBuilder: (context, value) {
                return [
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    sliver: SliverAppBar(
                      pinned: true,
                      stretch: true,
                      forceElevated: value,
                      forceMaterialTransparency: value,
                      expandedHeight: mediaQueryHeight,
                      flexibleSpace: _TvFilmDetailPoster(state.item),
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
                  Builder(builder: (_) => TvFilmDetailBasic(state.item)),
                  Builder(builder: (context) => const TvFilmDetailImage()),
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

class _TvFilmDetailPoster extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailPoster(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final mediaQueryHeight = mediaQuery.size.height * 0.375;
    return FlexibleSpaceBar(
      background: Stack(
        children: [
          ImageNetwork(
            film.backdropPath,
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
    );
  }
}
