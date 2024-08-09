import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wowtv/src/getit.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/comm/comm.dart';

class TvFilmDetailPeople extends StatelessWidget {
  final TvFilm film;

  const TvFilmDetailPeople(this.film, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: const _TvFilmDetailPeopleBody(),
      create: (_) => getIt<TvFilmCastBloc>(param1: film)..add(const TvFilmCastEventFetched()),
    );
  }
}

class _TvFilmDetailPeopleBody extends StatelessWidget {
  const _TvFilmDetailPeopleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "PEOPLE",
          ),
        ],
      ),
    );
  }
}
