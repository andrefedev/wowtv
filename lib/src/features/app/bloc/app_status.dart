part of 'app_bloc.dart';

class AppStatus extends Equatable {
  final String? err;
  final AppReason reason;

  const AppStatus({
    this.err,
    this.reason = AppReason.loading,
  });

  copyWith({
    String? err,
    AppReason? reason,
  }) {
    return AppStatus(
      err: err ?? this.err,
      reason: reason ?? this.reason,
    );
  }

  @override
  List<Object?> get props => [err, reason];
}

enum AppReason {
  loaded,
  loading,
  failLoading,
}

extension AppReasonX on AppReason {
  bool get isLoaded => this == AppReason.loaded;

  bool get isLoading => this == AppReason.loading;

  bool get isFailLoading => this == AppReason.failLoading;
}