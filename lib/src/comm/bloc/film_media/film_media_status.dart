part of 'film_media_bloc.dart';

class TvFilmMediaStatus extends Equatable {
  final String? err;
  final TvFilmMediaReason reason;

  const TvFilmMediaStatus({
    this.err,
    this.reason = TvFilmMediaReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmMediaReason? reason,
  }) {
    return TvFilmMediaStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmMediaReason {
  fetched,
  fetching,
  failFetching,
}

extension TvFilmMediaReasonX on TvFilmMediaReason {
  bool get isFetched => this == TvFilmMediaReason.fetched;

  bool get isFetching => this == TvFilmMediaReason.fetching;

  bool get isFailFetching => this == TvFilmMediaReason.failFetching;
}
