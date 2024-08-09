import 'package:flutter/material.dart';
import 'package:wowtv/src/features/app/app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeAllPage(
              key: Key("HomeAllPage1"),
            ),
            HomeAllPage(
              key: Key("HomeAllPage2"),
            ),
            HomeAllPage(
              key: Key("HomeAllPage3"),
            ),
          ],
        ),
        appBar: AppBar(
          title: const _HomeTitle(
            key: Key('_HomeTitle'),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "Todo",
              ),
              Tab(
                text: "Series",
              ),
              Tab(
                text: "Películas",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeTitle extends StatefulWidget {
  const _HomeTitle({super.key});

  @override
  State<_HomeTitle> createState() => _HomeTitleState();
}

class _HomeTitleState extends State<_HomeTitle> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    // Agregar listener después de que el árbol de widgets esté construido
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final controller = DefaultTabController.of(context);
      controller.addListener(() {
        if (!controller.indexIsChanging) {
          setState(() => _index = controller.index);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_index) {
      case 0:
        return const HomeAllTitle();
      case 1:
        return const Text("Hello World1");
      default:
        return const HomeFilmTitle();
    }
  }
}