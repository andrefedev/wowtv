part of 'film_main_bloc.dart';

class TvFilmMainStatus extends Equatable {
  final String? err;
  final TvFilmMainReason reason;

  const TvFilmMainStatus({
    this.err,
    this.reason = TvFilmMainReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmMainReason? reason,
  }) {
    return TvFilmMainStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmMainReason {
  fetched,
  fetching,
  failFetching,
}

extension TvFilmMainReasonX on TvFilmMainReason {
  bool get isFetched => this == TvFilmMainReason.fetched;

  bool get isFetching => this == TvFilmMainReason.fetching;

  bool get isFailFetching => this == TvFilmMainReason.failFetching;
}
