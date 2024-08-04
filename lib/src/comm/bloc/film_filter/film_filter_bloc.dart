import 'package:flutter/foundation.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:wowtv/src/api/data.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wowtv/src/api/repository.dart';

part 'film_filter_event.dart';

part 'film_filter_state.dart';

part 'film_filter_status.dart';

class TvFilmFilterBloc extends Bloc<TvFilmFilterEvent, TvFilmFilterState> {
  final Repository _reposvc;

  TvFilmFilterBloc({
    required Repository reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmFilterState()) {
    on<TvFilmFilterEventFetched>(_onFetched);
    on<TvFilmFilterEventSelectedMovieReleaseDate>(_onSelectedMovieReleaseDate);
    on<TvFilmFilterEventSelectedSerieRatingToday>(_onSelectedSerieRatingToday);
    on<TvFilmFilterEventSelectedMovieRatingToday>(_onSelectedMovieRatingToday);
  }

  _onFetched(TvFilmFilterEventFetched event, Emitter<TvFilmFilterState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmFilterReason.fetching,
        ),
      ));
      await _reposvc.tvfilmListAll(state.filter).then((items) {
        emit(state.copyWith(
          items: List.of(state.items)..addAll(items),
          status: state.status.copyWith(
            reason: TvFilmFilterReason.fetched,
          ),
        ));
      });
    } on HttpException catch (e) {
      emit(state.copyWith(
        status: state.status.copyWith(
          err: e.message,
          reason: TvFilmFilterReason.failFetching,
        ),
      ));
    }
  }

  _onSelectedMovieReleaseDate(TvFilmFilterEventSelectedMovieReleaseDate _, Emitter<TvFilmFilterState> emit) {
    emit(
      state.copyWith(
        filter: const TvFilterData(
          type: TvType.movie,
          orderBy: OrderBy.mostNew,
          pageLimit: 20, // pagination
        ),
      ),
    );
  }

  _onSelectedSerieRatingToday(TvFilmFilterEventSelectedSerieRatingToday _, Emitter<TvFilmFilterState> emit) {
    emit(
      state.copyWith(
        filter: const TvFilterData(
          type: TvType.serie,
          rating: Rating.daily,
          orderBy: OrderBy.mostRating,
          pageLimit: 10, // pagination
        ),
      ),
    );
  }

  _onSelectedMovieRatingToday(TvFilmFilterEventSelectedMovieRatingToday _, Emitter<TvFilmFilterState> emit) {
    emit(
      state.copyWith(
        filter: const TvFilterData(
          type: TvType.movie,
          rating: Rating.daily,
          orderBy: OrderBy.mostRating,
          pageLimit: 10, // pagination
        ),
      ),
    );
  }
}
