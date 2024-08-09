import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wowtv/src/conf.dart';

class HomeFilmPage extends StatelessWidget {
  const HomeFilmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Movie Page"),
      ),
    );
  }
}

// ###################
// # HOME Film TITLE #
// ###################

class HomeFilmTitle extends StatelessWidget {
  const HomeFilmTitle({super.key});

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
                "Películas",
                style: GoogleFonts.robotoCondensed(fontSize: 12),
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
                    Icons.filter_list,
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
                    Icons.search,
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

// ###################
// # HOME Film TITLE #
// ###################

class _HomeFilmDetail extends StatelessWidget {
  const _HomeFilmDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

