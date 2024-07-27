part of 'app_bloc.dart';

@immutable
sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

final class AppEventInited extends AppEvent {
  const AppEventInited();
}

final class AppEventReseted extends AppEvent {
  const AppEventReseted();
}

final class AppEventUserChanged extends AppEvent {
  final User? user;

  const AppEventUserChanged(this.user);

  @override
  List<Object?> get props => [user];
}

final class AppEventLogoutRequested extends AppEvent {
  const AppEventLogoutRequested();
}
