import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'dart:developer' as dev;
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

part 'api.e.dart';

/// Signature for the authentication token provider.
typedef AuthProvider = Future<String?> Function();

class HttpService extends http.BaseClient {
  final String _baseUrl;
  final String _baseKey;
  final SecureStorage _storage;

  HttpService({
    required String baseUrl,
    required String baseKey,
    required SecureStorage storage,
  })  : _baseUrl = baseUrl,
        _baseKey = baseKey,
        _storage = storage;

  final http.Client _client = RetryClient(http.Client());

  Uri uri(String path, {Map<String, dynamic>? query}) {
    Map<String, String>? queryParam;
    if (query != null) queryParam = flattenMap(query);
    return Uri.parse(_baseUrl + path).replace(queryParameters: queryParam);
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // logging
    logRequest(request.method, request.url);

    // custom headers
    request.headers[HttpHeaders.contentTypeHeader] = ContentType.json.value;
    request.headers[HttpHeaders.acceptEncodingHeader] = ContentType.json.value;

    // auth add token to request
    final token = await _storage.get(_baseKey);
    if (token != null) {
      request.headers.putIfAbsent(HttpHeaders.authorizationHeader, () => token);
    }

    return _client.send(request);
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) => super
      .get(url, headers: headers)
      .then((res) => _handleResponse(res))
      .catchError(_handleSocketException, test: (e) => e is SocketException);

  @override
  Future<http.Response> post(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) => super
      .post(url, headers: headers, body: body, encoding: encoding)
      .then((res) => _handleResponse(res))
      .catchError(_handleSocketException, test: (e) => e is SocketException);

  @override
  Future<http.Response> put(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) => super
      .put(url, headers: headers, body: body, encoding: encoding)
      .then((res) => _handleResponse(res))
      .catchError(_handleSocketException, test: (e) => e is SocketException);

  @override
  Future<http.Response> patch(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) => super
      .patch(url, headers: headers, body: body, encoding: encoding)
      .then((res) => _handleResponse(res))
      .catchError(_handleSocketException, test: (e) => e is SocketException);

  @override
  Future<http.Response> delete(Uri url, {Map<String, String>? headers, Object? body, Encoding? encoding}) => super
      .delete(url, headers: headers, body: body, encoding: encoding)
      .then((res) => _handleResponse(res))
      .catchError(_handleSocketException, test: (e) => e is SocketException);

  Future<http.Response> upload(http.MultipartRequest request) => send(request)
      .then((stream) => http.Response.fromStream(stream))
      .then((res) => _handleResponse(res))
      .catchError(_handleSocketException, test: (e) => e is SocketException);

  void logRequest(String method, Uri uri) {
    dev.log("-- [REQUEST] [$method] ${uri.toString()} --");
  }

  void logResponse(String? method, int status, Uri? uri) {
    dev.log("-- [RESPONSE] [$method] [$status] ${uri.toString()} --");
  }

  http.Response _handleResponse(http.Response res) {
    // handle error
    // throw HttpException
    final req = res.request;
    final method = req?.method;
    final statusCode = res.statusCode;

    // logging
    logResponse(method, statusCode, req?.url);

    // success
    if (statusCode < 400) return res; // success

    String message;
    try {
      message = jsonDecode(res.body);
    } catch (e) {
      message = res.body;
    }

    // Si not found y como no tiene un valor que debo hacer??
    // Agregar un valor..
    switch (statusCode) {
      case (HttpStatus.badRequest):
        throw HttpException.invalidArgument(message);
      case (HttpStatus.unauthorized):
        throw HttpException.unauthenticated(message);
      case (HttpStatus.forbidden):
        throw HttpException.permissionDenied(message);
      case (HttpStatus.notFound):
        throw HttpException.notFound(message);
      case (HttpStatus.conflict):
        throw HttpException.aborted(message);
      case (HttpStatus.preconditionFailed):
      case (HttpStatus.unprocessableEntity):
        throw HttpException.failedPrecondition(message);
      case (HttpStatus.tooManyRequests):
        throw HttpException.resourceExhausted(message);
      case (HttpStatus.clientClosedRequest):
        throw HttpException.cancelled(message);
    // case (HttpStatus.internalServerError):
    //   throw HttpException.internal(message);
      case (HttpStatus.notImplemented):
        throw HttpException.unimplemented(message);
      case (HttpStatus.serviceUnavailable):
        throw HttpException.unavailable(message);
      case (HttpStatus.gatewayTimeout):
        throw HttpException.deadlineExceeded(message);
      default:
        throw const HttpException.unknown(
          "Ocurrió un error desconocido en la comunicación con el servidor. "
              "Si el problema persiste, por favor comunícate con el equipo de soporte técnico.",
        );
    }
  }

  dynamic _handleSocketException(Object e) {
    final exec = e as SocketException;

    if (kDebugMode) {
      dev.log("SocketException: ${exec.message}");
    }

    throw const HttpException.unknown(
      "Ocurrió un error en la comunicación con el servidor. "
          "Si el problema persiste, por favor comunicate con el equipo de soporte técnico.",
    );
    // switch (exec.osError?.errorCode) {
    //   case (100):
    //     throw const HttpException.unknown(
    //       "Por favor, verifique la conexión"
    //       "a internet y vuelva a intentarlo nuevamente.",
    //     );
    //   default:
    //     /// 111 timeout
    //     throw const HttpException.unknown(
    //       "Ocurrió un error en la comunicación con el servidor. "
    //       "Si el problema persiste, por favor contactar al equipo de soporte técnico.",
    //     );
    // }
  }
}
