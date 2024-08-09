import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wowtv/src/api/model.dart';
import 'package:wowtv/src/features/app/app.dart';

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
        IconButton(
          icon: const Icon(
            Icons.share,
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const Scaffold(),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
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
    final colorScheme = theme.colorScheme;
    final oddItemColor = colorScheme.primary.withOpacity(0.025);
    final evenItemColor = colorScheme.primary.withOpacity(0.05);

    return SingleChildScrollView(
      child: Column(
        children: [
          _SettingResultItem(
            title: "Usuario",
            color: oddItemColor,
            iconData: Icons.copy,
            subtitle: context.read<AppBloc>().state.user!.nick,
            onPressed: () => _onNick("${context.read<AppBloc>().state.user?.idToken}"),
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Anuncios",
            color: evenItemColor,
            iconData: Icons.stars,
            subtitle: "Eliminar anuncios",
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Contacto",
            color: oddItemColor,
            iconData: Icons.email,
            subtitle: "Soporte y contacto",
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Calificar la App",
            color: oddItemColor,
            iconData: Icons.reviews,
            subtitle: "Dejar calificación en la tienda",
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Compartir la App",
            color: evenItemColor,
            iconData: Icons.share,
            subtitle: "Ayudanos a compartir la App",
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Política de privacidad",
            color: oddItemColor,
            iconData: Icons.privacy_tip,
            subtitle: "Manejo transparente de datos",
          ),
          const Divider(
            height: 0.0,
          ),
          _SettingResultItem(
            title: "Términos y condiciones",
            color: evenItemColor,
            iconData: Icons.info,
            subtitle: "Ambiente seguro y responsable",
          ),
        ],
      ),
    );
  }
}

class _SettingResultItem extends StatelessWidget {
  final String title;
  final Color color;
  final String? subtitle;
  final IconData? iconData;
  final VoidCallback? onPressed;

  const _SettingResultItem({
    super.key,
    required this.title,
    required this.color,
    this.subtitle,
    this.iconData,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Material(
      color: color,
      child: InkWell(
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
      ),
    );
  }
}
