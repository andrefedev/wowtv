final RegExp hostRegExp = RegExp(r'^[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)+$');

class Validator {
  static bool isHostValid(String value) => hostRegExp.hasMatch(value);
}
