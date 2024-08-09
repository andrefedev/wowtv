import 'dart:async';

import 'package:grpc/grpc.dart';

export 'v1/api.pb.dart';
export 'v1/auth.pb.dart';
export 'v1/base.pb.dart';
export 'v1/wplay.pb.dart';
export 'v1/api.pbgrpc.dart';

// ignore: non_constant_identifier_names
var CHANNEL_OPTIONS = ChannelOptions(
  idleTimeout: const Duration(seconds: 60),
  connectTimeout: const Duration(seconds: 30),
  connectionTimeout: const Duration(seconds: 60),
  // credentials: const ChannelCredentials.secure(),
  credentials: const ChannelCredentials.insecure(),
  codecRegistry: CodecRegistry(
    codecs: [
      const GzipCodec(),
      const IdentityCodec(),
    ],
  ),
);

/// Signature for the authentication token provider.
typedef AuthProvider = Future<String?> Function();

class AuthTokenMiddleware implements ClientInterceptor {
  final AuthProvider _getIdToken;

  const AuthTokenMiddleware(
      AuthProvider authProvider,
      ) : _getIdToken = authProvider;

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker,
      ) {
    final opts = CallOptions(providers: [_handleToken]);
    return invoker(method, requests, options.mergedWith(opts));
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
      ClientMethod<Q, R> method,
      Q request,
      CallOptions options,
      ClientUnaryInvoker<Q, R> invoker,
      ) {
    final opts = CallOptions(providers: [_handleToken]);
    return invoker(method, request, options.mergedWith(opts));
  }

  FutureOr<void> _handleToken(Map<String, String> metadata, String uri) async {
    final token = await _getIdToken();
    if (token != null && token.isNotEmpty) metadata['authorization'] = token;
  }
}