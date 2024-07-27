part of 'api.dart';

enum HttpExceptionType {
  unknown("UNKNOWN"),
  cancelled("CANCELLED"),
  invalidArgument("INVALID_ARGUMENT"),
  deadlineExceeded("DEADLINE_EXCEEDED"),
  notFound("NOT_FOUND"),
  alreadyExists("ALREADY_EXISTS"),
  permissionDenied("PERMISSION_DENIED"),
  unauthenticated("UNAUTHENTICATED"),
  resourceExhausted("RESOURCE_EXHAUSTED"),
  failedPrecondition("FAILED_PRECONDITION"),
  aborted("ABORTED"),
  outOfRange("OUT_OF_RANGE"),
  unimplemented("UNIMPLEMENTED"),
  internal("INTERNAL"),
  unavailable("UNAVAILABLE"),
  dataLoss("DATA_LOSS");

  const HttpExceptionType(String name);
}

class HttpException implements Exception {
  final String? message;

  final HttpExceptionType type;

  const HttpException.custom(this.type, [this.message]);

  const HttpException.cancelled([this.message]) : type = HttpExceptionType.cancelled;

  const HttpException.unknown([this.message]) : type = HttpExceptionType.unknown;

  const HttpException.invalidArgument([this.message]) : type = HttpExceptionType.invalidArgument;

  const HttpException.deadlineExceeded([this.message]) : type = HttpExceptionType.deadlineExceeded;

  const HttpException.notFound([this.message]) : type = HttpExceptionType.notFound;

  const HttpException.alreadyExists([this.message]) : type = HttpExceptionType.alreadyExists;

  const HttpException.permissionDenied([this.message]) : type = HttpExceptionType.permissionDenied;

  const HttpException.resourceExhausted([this.message]) : type = HttpExceptionType.resourceExhausted;

  const HttpException.failedPrecondition([this.message]) : type = HttpExceptionType.failedPrecondition;

  const HttpException.aborted([this.message]) : type = HttpExceptionType.aborted;

  const HttpException.outOfRange([this.message]) : type = HttpExceptionType.outOfRange;

  const HttpException.unimplemented([this.message]) : type = HttpExceptionType.unimplemented;

  const HttpException.internal([this.message]) : type = HttpExceptionType.internal;

  const HttpException.unavailable([this.message]) : type = HttpExceptionType.unavailable;

  const HttpException.dataLoss([this.message]) : type = HttpExceptionType.dataLoss;

  const HttpException.unauthenticated([this.message]) : type = HttpExceptionType.unauthenticated;

  @override
  String toString() => 'Fetch Exception (Type: ${type.name}, message: $message)';
}