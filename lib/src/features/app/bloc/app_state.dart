part of 'app_bloc.dart';

@immutable
class AppState extends Equatable {
  final User? user;
  final AppInfo? info;
  final AppStatus status;

  const AppState({
    this.user,
    this.info,
    this.status = const AppStatus(),
  });

  copyWith({
    User? user,
    AppInfo? info,
    AppStatus? status,
  }) {
    return AppState(
      user: user ?? this.user,
      info: info ?? this.info,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [user, info, status];
}
