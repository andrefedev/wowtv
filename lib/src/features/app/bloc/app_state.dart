part of 'app_bloc.dart';

@immutable
class AppState extends Equatable {
  final User? user;
  final AppStatus status;

  const AppState({
    this.user,
    this.status = const AppStatus(),
  });

  copyWith({
    User? user,
    AppStatus? status,
  }) {
    return AppState(
      user: user ?? this.user,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [user, status];
}
