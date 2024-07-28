import 'package:uuid/uuid.dart';
import 'package:wowtv/src/conf.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const uuid = Uuid();

class LocalStorage {
  final SharedPreferences _storage;

  const LocalStorage({
    required SharedPreferences storage,
  }) : _storage = storage;
}

class SecureStorage {
  final FlutterSecureStorage _storage;

  const SecureStorage({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  // ############
  // # ID TOKEN #
  // ############

  Future<String?> getIdToken() async {
    const key = AppConfig.idToken;
    return await _storage.read(key: key);
  }

  Future<void> setIdToken(String idToken) async {
    const key = AppConfig.idToken;
    await _storage.write(key: key, value: idToken);
  }
}