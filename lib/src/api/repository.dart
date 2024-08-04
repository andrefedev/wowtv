import 'dart:io';
import 'api.dart';
import 'data.dart';
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

  /// [GET] /films
  /// función que permite recuperar todas las películas.
  /// está función permite paginar agregar filtros, clasificación y paginación
  /// para obtener una recuperación más personalizada.
  Future<List<TvFilm>> tvfilmListAll(TvFilterData filter) async {
    var query = {
      "pageLimit": "${filter.pageLimit}",
      "pageOffset": "${filter.pageOffset}",
    };
    if (filter.type != null) {
      query.addAll({"type": filter.type!.name});
    }
    if (filter.genre != null) {
      query.addAll({"genre": filter.genre!});
    }
    if (filter.rating != null) {
      query.addAll({"rating": filter.rating!.name});
    }
    if (filter.orderBy != null) {
      query.addAll({"order_by": filter.orderBy!.name});
    }

    const path = "/films";
    final result = await _fetch.get(_fetch.uri(path, query: query));
    return (jsonDecode(result.body) as List<dynamic>).map((json) => TvFilm.fromJson(json)).toList();
  }

  /// [GET] /films/main
  /// función que permite recuperar un tv film main.
  Future<TvFilm> tvfilmMainDetail() async {
    const path = "/films/main";
    final fpath = _fetch.uri(path);
    final result = await _fetch.get(fpath);
    return TvFilm.fromJson(jsonDecode(result.body) as dynamic);
  }
}
