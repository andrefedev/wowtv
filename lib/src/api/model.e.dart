part of 'model.dart';

extension UserModel on User {
  String get nick => ref.split("-").last;
}