

import 'api.dart';

extension UserModel on User {
  String get nick => idToken.split("-").last;
}