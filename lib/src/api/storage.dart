import 'package:uuid/uuid.dart';
import 'package:wowtv/src/conf.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const uuid = Uuid();

class SecureStorage {
  final FlutterSecureStorage _storage;

  const SecureStorage({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  // ############
  // # ID TOKEN #
  // ############

  Future<String> idToken() async {
    const key = AppConfig.idToken;
    final value = await _storage.read(key: key) ?? "";

    // not exists
    String idToken = value;
    if (value.isEmpty) {
      idToken = uuid.v4();
      await _storage.write(key: key, value: idToken);
    }

    return idToken;
  }

  Future<void> idToken2(String idToken) async {
    const key = AppConfig.idToken;
    await _storage.write(key: key, value: idToken);
  }
}