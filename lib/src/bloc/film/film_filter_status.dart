part of 'film_filter_bloc.dart';

class TvFilmFilterStatus extends Equatable {
  final String? err;
  final TvFilmFilterReason reason;

  const TvFilmFilterStatus({
    this.err,
    this.reason = TvFilmFilterReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmFilterReason? reason,
  }) {
    return TvFilmFilterStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmFilterReason {
  fetched,
  fetching,
  failFetching,

  fetched2,
  fetching2,
  failFetching2,
}

extension TvFilmFilterReasonX on TvFilmFilterReason {
  bool get isFetched => this == TvFilmFilterReason.fetched;

  bool get isFetching => this == TvFilmFilterReason.fetching;

  bool get isFailFetching => this == TvFilmFilterReason.failFetching;

  bool get isFetched2 => this == TvFilmFilterReason.fetched2;

  bool get isFetching2 => this == TvFilmFilterReason.fetching2;

  bool get isFailFetching2 => this == TvFilmFilterReason.failFetching2;
}
