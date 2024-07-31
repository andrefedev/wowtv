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
    // on<ArticleFilterEventFetched2>(_onFetched2);
    on<TvFilmFilterEventSelectedMain>(_onSelectedMain);
    on<TvFilmFilterEventSelectedGenre>(_onSelectedGenre);
  }

  _onFetched(TvFilmFilterEventFetched event, Emitter<TvFilmFilterState> emit) async {
    try {
      emit(state.copyWith(
        status: state.status.copyWith(
          reason: TvFilmFilterReason.fetching,
        ),
      ));

      // await Future.delayed(const Duration(seconds: 5));
      print("filter ${state.filter}");
      // final limit = state.filter.limit ?? AppConfig.pageLimit;
      await _reposvc.tvfilmListAll(state.filter).then((items) {
        emit(state.copyWith(
          // max: limit > response.length,
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

  _onSelectedMain(TvFilmFilterEventSelectedMain event, Emitter<TvFilmFilterState> emit) {
    if (event.value != null) {
      emit(
        state.copyWith(
          filter: state.filter.copyWith(
            main: event.value,
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          filter: TvFilterData(
            type: state.filter.type,
            genre: state.filter.genre,
            rating: state.filter.rating,
            orderBy: state.filter.orderBy,
          ),
        ),
      );
    }
  }

  _onSelectedGenre(TvFilmFilterEventSelectedGenre event, Emitter<TvFilmFilterState> emit) {
    if (event.value != null) {
      emit(
        state.copyWith(
          filter: state.filter.copyWith(
            genre: event.value,
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          filter: TvFilterData(
            type: state.filter.type,
            main: state.filter.main,
            rating: state.filter.rating,
            orderBy: state.filter.orderBy,
          ),
        ),
      );
    }
  }

// _onMainUnselected()
//
// _onTypeSelected()
//
// _onTypeUnselected()
//
// _onCrewFiltered() {}
//
// _onCastFiltered() {}

//
// _onFetched2(ArticleFilterEventFetched2 event, Emitter<ArticleFilterState> emit) async {
//   if (state.max) {
//     return;
//   }
//   try {
//     emit(state.copyWith(
//       status: state.status.copyWith(
//         reason: ArticleFilterReason.fetching2,
//       ),
//     ));
//
//     final limit = state.filter.limit ?? AppConfig.pageLimit;
//     final response = await _service.filterAll(
//       _market.ref,
//       MarketStockFilterData(
//         brand: state.filter.brand?.ref,
//         category1: state.filter.category?.ref,
//         category2: state.filter.subcategory?.ref,
//       ),
//       PaginationData(
//         limit: limit,
//         offset: state.items.length,
//       ),
//     );
//     emit(state.copyWith(
//       max: limit > response.length,
//       items: List.of(state.items)..addAll(response),
//       status: state.status.copyWith(
//         reason: ArticleFilterReason.fetched2,
//       ),
//     ));
//   } on HttpException catch (e) {
//     emit(state.copyWith(
//       status: state.status.copyWith(
//         err: e.message,
//         reason: ArticleFilterReason.failFetching2,
//       ),
//     ));
//   }
// }

// SET
// _onChangeFilter
}
