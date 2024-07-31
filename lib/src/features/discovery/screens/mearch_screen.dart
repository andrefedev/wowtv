import 'package:flutter/material.dart';

// class ProductSearchScreen extends StatelessWidget {
//   final bool pop;
//
//   const ProductSearchScreen({super.key, this.pop = false});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<ProductSearchBloc>(
//       child: const _ProductSearchRoot(),
//       create: (_) => getIt<ProductSearchBloc>(param1: pop),
//     );
//   }
// }
//
// class _ProductSearchRoot extends StatelessWidget {
//   const _ProductSearchRoot();
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       appBar: _ProductSearchHead(
//         key: Key("_ProductSearchHead"),
//       ),
//       body: AnimatedSwitcher(
//         duration: Duration(milliseconds: 300),
//         child: _ProductSearchBody(
//           key: Key("_ProductSearchBody"),
//         ),
//       ),
//     );
//   }
// }
//
// class _ProductSearchHead extends StatefulWidget implements PreferredSizeWidget {
//   const _ProductSearchHead({super.key});
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//
//   @override
//   State<_ProductSearchHead> createState() => _ProductSearchHeadState();
// }
//
// class _ProductSearchHeadState extends State<_ProductSearchHead> {
//   final _focus = FocusNode();
//   final _controller = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(() {
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     _focus.dispose();
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<ProductSearchBloc>();
//
//     const decoration = InputDecoration(
//       border: InputBorder.none,
//       hintText: "Buscar producto",
//     );
//
//     return BlocBuilder<ProductSearchBloc, ProductSearchState>(
//       builder: (context, state) {
//         return AppBar(
//           title: TextField(
//             focusNode: _focus,
//             controller: _controller,
//             autofocus: true,
//             autocorrect: false,
//             decoration: decoration,
//             // style: textTheme.titleLarge,
//             textInputAction: TextInputAction.search,
//             textCapitalization: TextCapitalization.sentences,
//             onSubmitted: (value) => bloc.add(ProductSearchEventSubmitted(value)),
//           ),
//           actions: [
//             if (_controller.text.isNotEmpty)
//               IconButton(
//                 icon: const Icon(Icons.clear),
//                 onPressed: () {
//                   _controller.clear();
//                   bloc.add(const ProductSearchEventReseted());
//                 },
//               ),
//             IconButton(
//               icon: const Icon(Icons.barcode_reader),
//               onPressed: () async {
//                 await getIt<Scanner>().onStart().then((result) {
//                   if (result != null) {
//                     _controller.text = result;
//                     bloc.add(ProductSearchEventSubmitted(result));
//                   }
//                 });
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class _ProductSearchBody extends StatelessWidget {
//   const _ProductSearchBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final textTheme = theme.textTheme;
//     return BlocBuilder<ProductSearchBloc, ProductSearchState>(
//       builder: (context, state) {
//         if (state.status.reason.isInitial) {
//           return const SizedBox.shrink();
//         }
//
//         if (state.status.reason.isSubmitting) {
//           return const LinearProgressIndicator();
//         }
//
//         if (state.status.reason.isFailSubmitting) {
//           return Center(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 "${state.status.err}",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           );
//         }
//
//         if (state.status.reason.isSubmitted) {
//           if (state.items.isEmpty) {
//             return Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   'No se encontraron productos que coincidan con el término de búsqueda ingresado.',
//                   style: textTheme.bodyLarge,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             );
//           }
//         }
//
//         // Initial
//         return _ProductSearchResult(state.items);
//       },
//     );
//   }
// }
//
// class _ProductSearchResult extends StatelessWidget {
//   final List<Product> items;
//
//   const _ProductSearchResult(this.items);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemCount: items.length,
//       itemBuilder: (_, i) => _ProductSearchResultItem(items[i]),
//       separatorBuilder: (context, index) => const Divider(height: 0.0),
//     );
//   }
// }
//
// class _ProductSearchResultItem extends StatelessWidget {
//   final Product product;
//
//   const _ProductSearchResultItem(this.product);
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final textTheme = theme.textTheme;
//     return InkWell(
//       onTap: () {
//         if (context.read<ProductSearchBloc>().pop) {
//           Navigator.pop(context, product);
//         } else {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (_) => ProductItemScreen(product),
//             ),
//           );
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 8.0,
//           horizontal: 16.0,
//         ),
//         child: Row(
//           children: [
//             _ProductListResultItemImage(
//               product,
//             ),
//             const SizedBox(
//               width: 8.0,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.brand.name,
//                     style: textTheme.bodySmall,
//                   ),
//                   Text(
//                     product.name,
//                     style: textTheme.bodyLarge,
//                   ),
//                   Text(
//                     product.subtitle,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class _ProductListResultItemImage extends StatelessWidget {
//   final Product item;
//
//   const _ProductListResultItemImage(this.item);
//
//   Size get size => const Size(70.0, 70.0);
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipOval(
//       child: ImageNetwork(
//         size: size,
//         source: item.imurl,
//       ),
//     );
//   }
// }