import 'package:flutter/material.dart';

// ##################
// # RPC NAME INPUT #
// ##################

class RpcNameHead extends StatelessWidget {
  const RpcNameHead({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Text(
      "Conectar al servidor",
      style: textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

// ##################
// # RPC HOST INPUT #
// ##################

class RpcHostTextField extends StatelessWidget {
  final String? value;
  final ValueSetter<String>? onChanged;
  final String? Function(String? value)? onValidator;

  const RpcHostTextField({
    super.key,
    this.value,
    this.onChanged,
    this.onValidator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      onChanged: onChanged,
      validator: onValidator,
      keyboardType: TextInputType.url,
      textCapitalization: TextCapitalization.none,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        labelText: "gRPC",
        helperText: "Example: 192.168.1.100",
      ),
    );
  }
}

// ##################
// # RPC HOST INPUT #
// ##################

class RpcPortTextField extends StatelessWidget {
  final int? value;
  final ValueSetter<int?> onChanged;
  final String? Function(int? value) onValidator;

  const RpcPortTextField({
    super.key,
    this.value,
    required this.onChanged,
    required this.onValidator,
  });

  _onChanged(String value) {
    onChanged(int.tryParse(value));
  }

  String? _onValidator(String? value) {
    return onValidator(int.tryParse("$value"));
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: "$value",
      onChanged: _onChanged,
      validator: _onValidator,
      keyboardType: TextInputType.url,
      textCapitalization: TextCapitalization.none,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        labelText: "Puerto",
        helperText: "Protocolo Seguro de Transferencia",
      ),
    );
  }
}
