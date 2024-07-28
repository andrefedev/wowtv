import 'package:formz/formz.dart';
import 'package:wowtv/src/validator.dart';

// ##################
// # RPC HOST INPUT #
// ##################

enum RpcHostInputError { empty, format }

class RpcHostInput extends FormzInput<String, RpcHostInputError> {
  const RpcHostInput.pure({String value = ''}) : super.pure(value);

  const RpcHostInput.dirty({String value = ''}) : super.dirty(value);

  @override
  RpcHostInputError? validator(String value) {
    if (value.isEmpty) {
      return RpcHostInputError.empty;
    }

    final uri = Uri.tryParse(value);
    if (uri == null) {
      return RpcHostInputError.format;
    }

    return null;
  }
}

extension RpcHostInputErrorX on RpcHostInputError {
  String? get errMessage {
    switch (this) {
      case RpcHostInputError.empty:
        return "El host es un campo requerido";
      case RpcHostInputError.format:
        return "El host ingresado no es válido";
      default:
        return null;
    }
  }
}

// ##################
// # RPC PORT INPUT #
// ##################

enum RpcPortInputError { empty }

class RpcPortInput extends FormzInput<int?, RpcPortInputError> {
  const RpcPortInput.pure({int? value}) : super.pure(value);

  const RpcPortInput.dirty({int? value}) : super.dirty(value);

  @override
  RpcPortInputError? validator(int? value) {
    if (value == null) {
      return RpcPortInputError.empty;
    }

    return null;
  }
}

extension RpcPortInputErrorX on RpcPortInputError {
  String? get errMessage {
    switch (this) {
      case RpcPortInputError.empty:
        return "El puerto es un campo requerido";
      default:
        return null;
    }
  }
}