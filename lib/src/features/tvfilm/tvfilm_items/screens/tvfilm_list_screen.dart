import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class TvFilmListScreen extends StatelessWidget {
//   const TvFilmListScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<BrandListBloc>(
//       child: const _BrandListRoot(),
//       create: (_) => getIt<BrandListBloc>(),
//     );
//   }
// }
//
// class _BrandListRoot extends StatelessWidget {
//   const _BrandListRoot();
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: _BrandListBody(),
//       appBar: _BrandListHead(),
//     );
//   }
// }
//
// class _BrandListHead extends StatelessWidget implements PreferredSizeWidget {
//   const _BrandListHead();
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: const Text("Marcas"),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.add),
//           onPressed: () => Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (_) => const BrandCreateScreen(),
//             ),
//           ),
//         ),
//         IconButton(
//           icon: const Icon(Icons.search),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => const BrandSearchScreen(),
//               ),
//             ).then((result) {
//               if (result != null) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => BrandDetailScreen(result!)),
//                 );
//               }
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
//
// class _BrandListBody extends StatelessWidget {
//   const _BrandListBody();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<BrandListBloc, BrandListState>(
//       builder: (context, state) {
//         if (state.status.reason.isInitial) {
//           return const SizedBox.shrink();
//         }
//
//         if (state.status.reason.isLoading) {
//           return const LinearProgressIndicator();
//         }
//
//         if (state.status.reason.isFailLoading) {
//           return Center(
//             child: RetryList(
//               message: state.status.err,
//               onPressed: () => context.read<BrandListBloc>()
//                 ..add(const BrandListEventReseted())
//                 ..add(const BrandListEventFetched()),
//             ),
//           );
//         }
//
//         return _BrandListResult(
//           max: state.max,
//           items: state.items,
//         );
//       },
//       listener: (context, state) {
//         if (state.status.reason.isFailLoading2) {
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
//
// class _BrandListResult extends StatefulWidget {
//   final bool max;
//   final List<Brand> items;
//
//   const _BrandListResult({
//     required this.max,
//     required this.items,
//   });
//
//   @override
//   State<_BrandListResult> createState() => _BrandListResultState();
// }
//
// class _BrandListResultState extends State<_BrandListResult> {
//   final _scrollController = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return RefreshIndicator(
//       onRefresh: () async {
//         context.read<BrandListBloc>()
//           ..add(const BrandListEventReseted())
//           ..add(const BrandListEventFetched());
//       },
//       child: ListView.separated(
//         controller: _scrollController,
//         itemCount: widget.max ? widget.items.length : widget.items.length + 1,
//         itemBuilder: (_, i) => i >= widget.items.length ? const LoadingWidget() : _BrandListResultItem(widget.items[i]),
//         separatorBuilder: (_, __) => const Divider(height: 0.0),
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }
//
//   @override
//   void dispose() {
//     _scrollController.removeListener(_onScroll);
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   void _onScroll() {
//     if (_isBottom) {
//       context.read<BrandListBloc>().add(const BrandListEventFetched2());
//     }
//   }
//
//   bool get _isBottom {
//     if (!_scrollController.hasClients) return false;
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.offset;
//     return currentScroll >= (maxScroll * 0.9);
//   }
// }
//
// class _BrandListResultItem extends StatelessWidget {
//   final Brand item;
//
//   const _BrandListResultItem(this.item);
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final textTheme = theme.textTheme;
//     return InkWell(
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           children: [
//             const CircleAvatar(
//               child: Icon(Icons.abc),
//             ),
//             const SizedBox(
//               width: 16.0,
//             ),
//             Text(
//               item.name,
//               style: textTheme.bodyLarge,
//             ),
//             const Expanded(
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: Icon(Icons.chevron_right),
//               ),
//             )
//           ],
//         ),
//       ),
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) => BrandDetailScreen(item),
//         ),
//       ),
//     );
//   }
// }
