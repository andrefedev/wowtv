import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rpctv/src/api/model.dart';
import 'package:rpctv/src/features/app/app.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SettingRoot();
  }
}

class _SettingRoot extends StatelessWidget {
  const _SettingRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _SettingBody(),
      appBar: _SettingHead(),
    );
  }
}

class _SettingHead extends StatelessWidget implements PreferredSizeWidget {
  const _SettingHead({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppBloc>();
    return AppBar(
      title: const Text(
        "Mi cuenta",
      ),
      actions: [
        if (context.read<AppBloc>().state.user?.isAdmin ?? false)
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.admin_panel_settings,
            ),
          ),
      ],
    );
  }
}

class _SettingBody extends StatelessWidget {
  const _SettingBody({super.key});

  _onNick(String value) {
    Clipboard.setData(ClipboardData(text: value));
  }

  _onPrime() {}

  _onCredit() {}

  _onReviewApp() {}

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          _SettingResultItem(
            title: "Nick",
            iconData: Icons.copy,
            subtitle: context.read<AppBloc>().state.user!.nick,
            onPressed: () => _onNick("${context.read<AppBloc>().state.user?.idToken}"),
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Créditos",
            iconData: Icons.chevron_right,
            subtitle: "Saldo disponible ${context.read<AppBloc>().state.user!.credits}",
          ),
          const Divider(
            height: 0.0,
          ),
          const _SettingResultItem(
            title: "Contacto",
            iconData: Icons.chevron_right,
            subtitle: "Soporte y contacto",
          ),
          const Divider(
            height: 0.0,
          ),
          const _SettingResultItem(
            title: "Suscripción",
            iconData: Icons.chevron_right,
            subtitle: "Administrar suscripción",
          ),
          const Divider(
            height: 0.0,
          ),
          const _SettingResultItem(
            title: "Calificar la App",
            iconData: Icons.chevron_right,
            subtitle: "Dejar calificación en la tienda",
          ),
          const Divider(
            height: 0.0,
          ),
          const _SettingResultItem(
            title: "Compartir la App",
            iconData: Icons.chevron_right,
            subtitle: "Ayudanos a compartir la aplicación",
          ),
          const Divider(
            height: 0.0,
          ),
          const _SettingResultItem(
            title: "Política de privacidad",
            iconData: Icons.chevron_right,
            subtitle: "Manejo transparente de datos personales",
          ),
          const Divider(
            height: 0.0,
          ),
          const _SettingResultItem(
            title: "Términos y condiciones",
            iconData: Icons.chevron_right,
            subtitle: "Condiciones para un ambiente seguro y responsable",
          ),
        ],
      ),
    );
  }
}

class _SettingResultItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData? iconData;
  final VoidCallback? onPressed;

  const _SettingResultItem({
    super.key,
    required this.title,
    this.subtitle,
    this.iconData,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.titleMedium,
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: textTheme.bodyLarge,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            if (iconData != null)
              Expanded(
                flex: 1,
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                    icon: Icon(iconData),
                    onPressed: onPressed,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
