part of 'film_cast_bloc.dart';

class TvFilmCastStatus extends Equatable {
  final String? err;
  final TvFilmCastReason reason;

  const TvFilmCastStatus({
    this.err,
    this.reason = TvFilmCastReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmCastReason? reason,
  }) {
    return TvFilmCastStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmCastReason {
  fetched,
  fetching,
  failFetching,
}

extension TvFilmCastReasonX on TvFilmCastReason {
  bool get isFetched => this == TvFilmCastReason.fetched;

  bool get isFetching => this == TvFilmCastReason.fetching;

  bool get isFailFetching => this == TvFilmCastReason.failFetching;
}
