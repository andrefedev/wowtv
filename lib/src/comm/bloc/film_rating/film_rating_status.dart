part of 'film_rating_bloc.dart';

class TvFilmPopularStatus extends Equatable {
  final String? err;
  final TvFilmPopularReason reason;

  const TvFilmPopularStatus({
    this.err,
    this.reason = TvFilmPopularReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmPopularReason? reason,
  }) {
    return TvFilmPopularStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmPopularReason {
  fetched,
  fetching,
  failFetching,
}

extension TvFilmPopularReasonX on TvFilmPopularReason {
  bool get isFetched => this == TvFilmPopularReason.fetched;

  bool get isFetching => this == TvFilmPopularReason.fetching;

  bool get isFailFetching => this == TvFilmPopularReason.failFetching;
}
