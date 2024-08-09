part of 'film_item_bloc.dart';

class TvFilmDetailStatus extends Equatable {
  final String? err;
  final TvFilmDetailReason reason;

  const TvFilmDetailStatus({
    this.err,
    this.reason = TvFilmDetailReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmDetailReason? reason,
  }) {
    return TvFilmDetailStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmDetailReason {
  fetched,
  fetching,
  failFetching,
}

extension TvFilmDetailReasonX on TvFilmDetailReason {
  bool get isFetched => this == TvFilmDetailReason.fetched;

  bool get isFetching => this == TvFilmDetailReason.fetching;

  bool get isFailFetching => this == TvFilmDetailReason.failFetching;
}
