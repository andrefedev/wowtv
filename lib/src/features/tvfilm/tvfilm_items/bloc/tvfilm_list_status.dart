part of 'tvfilm_list_bloc.dart';

enum TvFilmListReason {
  loaded,
  loading,
  failLoading,

  loaded2,
  loading2,
  failLoading2,
}

extension TvFilmListReasonX on TvFilmListReason {
  bool get isLoaded => this == TvFilmListReason.loaded;

  bool get isLoading => this == TvFilmListReason.loading;

  bool get isFailLoading => this == TvFilmListReason.failLoading;

  bool get isLoaded2 => this == TvFilmListReason.loaded2;

  bool get isLoading2 => this == TvFilmListReason.loading2;

  bool get isFailLoading2 => this == TvFilmListReason.failLoading2;

  bool get isFetching => isLoading || isLoading2;

  bool get isFailFetching => isFailLoading || isFailLoading2;
}

class TvFilmListStatus extends Equatable {
  final String? err;
  final TvFilmListReason reason;

  const TvFilmListStatus({
    this.err,
    this.reason = TvFilmListReason.loading,
  });

  copyWith({
    String? err,
    TvFilmListReason? reason,
  }) {
    return TvFilmListStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}
