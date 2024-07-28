import 'dart:io';
import 'api.dart';
import 'model.dart';
import 'dart:convert';

class Repository {
  final HttpService _fetch;

  Repository(HttpService client) : _fetch = client;

  // ########
  // # AUTH #
  // ########

  /// [GET] /auth/me
  /// función que permite recuperar un usuario autenticado
  Future<User> userme([String? token]) async {
    Map<String, String>? headers;
    if (token != null) {
      headers = {};
      headers[HttpHeaders.authorizationHeader] = token;
    }

    const path = "/auth/me";
    final furi = _fetch.uri(path);
    final result = await _fetch.get(furi, headers: headers);
    return User.fromJson(jsonDecode(result.body) as dynamic);
  }

  /// [GET] /auth/token
  /// función que permite crear un nuevo idToken
  Future<String> idToken([String? token]) async {
    const path = "/auth/token";
    final furi = _fetch.uri(path);
    final result = await _fetch.get(furi);
    return jsonDecode(result.body) as String;
  }


  // ###########
  // # TV FILM #
  // ###########
  /// [GET] /films/token
  /// función que permite crear un nuevo idToken
  Future<TvFilm> tvfilmDetail(String ref) async {
    final path = "/films/$ref";
    final furi = _fetch.uri(path);
    final result = await _fetch.get(furi);
    return TvFilm.fromJson(jsonDecode(result.body));
  }

  /// [GET] /brands
  /// función que permite recuperar todas las marcas.
  /// está función permite paginar los resultados.
  Future<List<TvFilm>> tvfilmListAll(int limit, int offset) async {
    const path = "/films";
    final query = {"limit": "$limit", "offset": "$offset"};
    final result = await _fetch.get(_fetch.uri(path, query: query));
    return (jsonDecode(result.body) as List<dynamic>).map((json) => TvFilm.fromJson(json)).toList();
  }


}
