import 'package:flutter/material.dart';
import 'package:rpctv/src/widgetcom.dart';
import 'package:rpctv/src/features/app/app.dart';

// ignore: constant_identifier_names
const _tabBarDestinations = [
  AppPage(
    name: 'Series',
    screen: Scaffold(),
    iconData: Icons.home_max,
    iconDataSelected: Icons.home_max,
  ),
  AppPage(
    name: 'Películas',
    screen: Scaffold(),
    iconData: Icons.search,
    iconDataSelected: Icons.search,
  ),
  AppPage(
    name: 'Categorías',
    screen: Scaffold(),
    iconData: Icons.star_border,
    iconDataSelected: Icons.star_border,
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabBarDestinations.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Icon(
            Icons.live_tv,
          ),
          bottom: TabBar(
            tabs: [
              for (var tab in _tabBarDestinations) ...[
                Tab(
                  text: tab.name,
                ),
              ],
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var tab in _tabBarDestinations) ...[
              Icon(
                tab.iconData,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _HomeHead extends StatelessWidget {
  const _HomeHead({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CardForm(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const RpcNameHead(
//                   key: Key("RpcNameHead"),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 RpcHostTextField(
//                   value: context.read<RpcBloc>().state.form.host.value,
//                   onChanged: (value) => context.read<RpcBloc>().add(RpcEventHostChanged(value)),
//                   onValidator: (_) => context.read<RpcBloc>().state.form.host.error?.errMessage,
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 RpcPortTextField(
//                   value: context.read<RpcBloc>().state.form.port.value,
//                   onChanged: (value) => context.read<RpcBloc>().add(RpcEventPortChanged(value)),
//                   onValidator: (_) => context.read<RpcBloc>().state.form.host.error?.errMessage,
//                 ),
//               ],
//             ),
//           ),
//
//           // SHOW ADS BANNER
//           const AdbScreen(
//             ref: "ca-app-pub-9172217122849069/3379756359",
//           ),
//
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 _HomeFormButtonConnect(
//                   key: Key("_AppFormButtonConnect"),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _HomeFormButton extends StatelessWidget {
//   const _HomeFormButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<RpcBloc, RpcState>(
//       builder: (context, state) {
//         return SimpleButton(
//           title: "Conectar",
//           disable: state.form.isNotValid,
//           loading: state.status.reason.isConnecting,
//           onPressed: () => context.read<RpcBloc>().add(const RpcEventConnected()),
//         );
//       },
//       listener: (context, state) {
//         if (state.status.reason.isConnected) {
//           if (state.rpc != null) {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => XrpcScreen(state.rpc!),
//               ),
//             );
//           }
//         }
//
//         if (state.status.reason.isConnecting) {
//           FocusManager.instance.primaryFocus?.unfocus();
//         }
//
//         if (state.status.reason.isFailConnecting) {
//           ScaffoldMessenger.of(context)
//             ..removeCurrentSnackBar()
//             ..showSnackBar(AppSnackBar("${state.status.err}"));
//         }
//       },
//       listenWhen: (prev, next) {
//         return prev.status != next.status;
//       },
//     );
//   }
// }
