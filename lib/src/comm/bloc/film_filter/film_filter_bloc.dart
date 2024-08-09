import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:wowtv/src/api/api.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'film_filter_event.dart';

part 'film_filter_state.dart';

part 'film_filter_status.dart';

class TvFilmFilterBloc extends Bloc<TvFilmFilterEvent, TvFilmFilterState> {
  final ApiClient _reposvc;

  TvFilmFilterBloc({
    required ApiClient reposvc,
  })  : _reposvc = reposvc,
        super(const TvFilmFilterState()) {
    on<TvFilmFilterEventFetched>(_onFetched);
    // on<TvFilmFilterEventSelectedMovieReleaseDate>(_onSelectedMovieReleaseDate);
    // on<TvFilmFilterEventSelectedSerieRatingToday>(_onSelectedSerieRatingToday);
    // on<TvFilmFilterEventSelectedMovieRatingToday>(_onSelectedMovieRatingToday);
  }

  _onFetched(TvFilmFilterEventFetched event, Emitter<TvFilmFilterState> emit) async {
    try {
      emit(state.copyWith(
        statusx: state.statusx.copyWith(
          reason: TvFilmFilterReason.fetching,
        ),
      ));
      final filter = event.value;
      final request = TvFilmListAllReq(filter: filter);
      await _reposvc.tvFilmListAll(request).then((res) {
        final max = filter.pageLimit > res.results.length;
        emit(state.copyWith(
          max: max,
          filter: filter,
          results: res.results,
          statusx: state.statusx.copyWith(
            reason: TvFilmFilterReason.fetched,
          ),
        ));
      });
    } on GrpcError catch (e) {
      emit(state.copyWith(
        statusx: state.statusx.copyWith(
          err: e.message,
          reason: TvFilmFilterReason.failFetching,
        ),
      ));
    }
  }

  _onFetched2() {
    if (state.filter == null) {
      return;
    }
  }

// _onSelectedMovieReleaseDate(TvFilmFilterEventSelectedMovieReleaseDate _, Emitter<TvFilmFilterState> emit) {
//   emit(
//     state.copyWith(
//       filter: const TvFilterData(
//         type: TvType.movie,
//         orderBy: OrderBy.mostNew,
//         pageLimit: 20, // pagination
//       ),
//     ),
//   );
// }
//
// _onSelectedSerieRatingToday(TvFilmFilterEventSelectedSerieRatingToday _, Emitter<TvFilmFilterState> emit) {
//   emit(
//     state.copyWith(
//       filter: const TvFilterData(
//         type: TvType.serie,
//         rating: Rating.daily,
//         orderBy: OrderBy.mostRating,
//         pageLimit: 10, // pagination
//       ),
//     ),
//   );
// }
//
// _onSelectedMovieRatingToday(TvFilmFilterEventSelectedMovieRatingToday _, Emitter<TvFilmFilterState> emit) {
//   emit(
//     state.copyWith(
//       filter: const TvFilterData(
//         type: TvType.movie,
//         rating: Rating.daily,
//         orderBy: OrderBy.mostRating,
//         pageLimit: 10, // pagination
//       ),
//     ),
//   );
// }
}
