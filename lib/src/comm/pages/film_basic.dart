import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/model.dart';

class TvFilmDetailBasic extends StatelessWidget {
  final TvFilm film;

  const TvFilmDetailBasic(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8.0,
          ),
        ),
        SliverToBoxAdapter(
          child: _TvFilmDetailBasicInfo(
            film,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8.0,
          ),
        ),
        SliverToBoxAdapter(
          child: _TvFilmDetailInfoVoteAvg(
            film: film,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8.0,
          ),
        ),
        SliverToBoxAdapter(
          child: _TvFilmDetailInfoPlayDown(
            film: film,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8.0,
          ),
        ),
        SliverToBoxAdapter(
          child: _TvFilmDetailInfoOverview(
            film,
          ),
        ),
      ],
    );
  }
}

class _TvFilmDetailBasicInfo extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailBasicInfo(this.film, {super.key});

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
                  text: "${film.year}",
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

class _TvFilmDetailInfoVoteAvg extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailInfoVoteAvg({
    super.key,
    required this.film,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: film.voteavg.toStringAsFixed(1),
                  style: textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' /10',
                  style: textTheme.bodySmall!.copyWith(
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

class _TvFilmDetailInfoPlayDown extends StatelessWidget {
  final TvFilm film;

  const _TvFilmDetailInfoPlayDown({
    super.key,
    required this.film,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
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
                style: textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
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
                style: textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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
  }
}

class _TvFilmDetailInfoOverview extends StatefulWidget {
  final TvFilm film;

  const _TvFilmDetailInfoOverview(this.film, {super.key});

  @override
  State<_TvFilmDetailInfoOverview> createState() => _TvFilmDetailInfoOverviewState();
}

class _TvFilmDetailInfoOverviewState extends State<_TvFilmDetailInfoOverview> {
  bool _isExpanded = false;

  Duration get duration => const Duration(milliseconds: 200);

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
          AnimatedSize(
            curve: Curves.easeInOut,
            duration: duration,
            child: Text.rich(
              overflow: TextOverflow.fade,
              maxLines: _isExpanded ? null : 3,
              textAlign: TextAlign.justify,
              TextSpan(
                children: <TextSpan>[
                  if (widget.film.tagline.isNotEmpty)
                    TextSpan(
                      text: "${widget.film.tagline} ",
                      style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  TextSpan(
                    text: widget.film.overview,
                    style: textTheme.bodyMedium!.copyWith(
                        // color: Colors.white70,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text(
                _isExpanded ? 'Ocultar' : 'Mostrar más',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
