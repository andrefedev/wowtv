import 'package:flutter/foundation.dart';
import 'package:wowtv/src/api/data.dart';
import 'package:wowtv/src/api/model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tv_film_filter_event.dart';

part 'tv_film_filter_state.dart';

part 'tv_film_filter_status.dart';

class TvFilmFilterBloc extends Bloc<TvFilmFilterEvent, TvFilmFilterState> {
//  final ArticleCaseService _service;

  TvFilmFilterBloc() : super(const TvFilmFilterState()) {
    // on<ArticleFilterEventInited>(_onInited);
    // on<ArticleFilterEventLoaded>(_onLoaded);
    // on<ArticleFilterEventReseted>(_onReseted);
    // on<ArticleFilterEventFetched>(_onFetched);
    // on<ArticleFilterEventFetched2>(_onFetched2);
  }
  //
  // _onInited(ArticleFilterEventInited event, Emitter<ArticleFilterState> emit) {
  //   emit(state.copyWith(
  //     items: const [],
  //     filter: ArticleFilterForm(
  //       limit: event.limit,
  //       brand: event.brand,
  //       category: event.category,
  //       subcategory: event.subcategory,
  //     ),
  //   ));
  // }
  //
  // _onLoaded(ArticleFilterEventLoaded event, Emitter<ArticleFilterState> emit) {
  //   final index = state.items.indexWhere((el) => el.ref == event.value.ref);
  //   if (index != -1) {
  //     emit(state.copyWith(
  //       items: List.of(state.items)
  //         ..removeAt(index)
  //         ..insert(index, event.value),
  //     ));
  //   }
  // }
  //
  // _onReseted(ArticleFilterEventReseted event, Emitter<ArticleFilterState> emit) {
  //   emit(state.copyOnlyWithFilter());
  // }
  //
  // _onFetched(ArticleFilterEventFetched event, Emitter<ArticleFilterState> emit) async {
  //   try {
  //     emit(state.copyWith(
  //       status: state.status.copyWith(
  //         reason: ArticleFilterReason.fetching,
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
  //         reason: ArticleFilterReason.fetched,
  //       ),
  //     ));
  //   } on HttpException catch (e) {
  //     emit(state.copyWith(
  //       status: state.status.copyWith(
  //         err: e.message,
  //         reason: ArticleFilterReason.failFetching,
  //       ),
  //     ));
  //   }
  // }
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
