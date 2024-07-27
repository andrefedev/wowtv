import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';

import 'formdata.dart';

class RpcForm extends Equatable with FormzMixin {
  final RpcHostInput host;
  final RpcPortInput port;

  const RpcForm._({
    this.host = const RpcHostInput.pure(),
    this.port = const RpcPortInput.pure(),
  });

  const RpcForm() : this._();

  copyWith({
    RpcHostInput? host,
    RpcPortInput? port,
  }) {
    return RpcForm._(
      host: host ?? this.host,
      port: port ?? this.port,
    );
  }

  @override
  List<Object?> get props => [host, port];

  @override
  List<FormzInput> get inputs => [host, port];
}
