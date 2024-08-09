part of 'film_image_bloc.dart';

class TvFilmImageStatus extends Equatable {
  final String? err;
  final TvFilmImageReason reason;

  const TvFilmImageStatus({
    this.err,
    this.reason = TvFilmImageReason.fetching,
  });

  copyWith({
    String? err,
    TvFilmImageReason? reason,
  }) {
    return TvFilmImageStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum TvFilmImageReason {
  fetched,
  fetching,
  failFetching,
}

extension TvFilmImageReasonX on TvFilmImageReason {
  bool get isFetched => this == TvFilmImageReason.fetched;

  bool get isFetching => this == TvFilmImageReason.fetching;

  bool get isFailFetching => this == TvFilmImageReason.failFetching;
}
