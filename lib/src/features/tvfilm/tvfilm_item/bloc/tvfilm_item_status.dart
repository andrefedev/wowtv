part of 'tvfilm_item_bloc.dart';

enum TvFilmItemReason {
  loaded,
  loading,
  failLoading,
}

extension TvFilmItemReasonX on TvFilmItemReason {
  bool get isLoaded => this == TvFilmItemReason.loaded;

  bool get isLoading => this == TvFilmItemReason.loading;

  bool get isFailLoading => this == TvFilmItemReason.failLoading;
}

class TvFilmItemStatus extends Equatable {
  final String? err;
  final TvFilmItemReason reason;

  const TvFilmItemStatus({
    this.err,
    this.reason = TvFilmItemReason.loading,
  });

  copyWith({
    String? err,
    TvFilmItemReason? reason,
  }) {
    return TvFilmItemStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}