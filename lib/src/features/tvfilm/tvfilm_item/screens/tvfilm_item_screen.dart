// import 'package:api/api.dart';
// import 'package:core/core.dart';
// import 'package:admin/src/getit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:admin/src/features/product/product.dart';
//
// class BrandDetailScreen extends StatelessWidget {
//   final Brand brand;
//
//   const BrandDetailScreen(this.brand, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<BrandItemBloc>(
//       child: const _BrandDetailRoot(),
//       create: (_) => getIt<BrandItemBloc>(param1: brand),
//     );
//   }
// }
//
// class _BrandDetailRoot extends StatelessWidget {
//   const _BrandDetailRoot({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BrandItemBloc, BrandItemState>(
//       builder: (context, state) {
//         return PopScope(
//           canPop: state.form.isPure,
//           onPopInvoked: (didPop) async {
//             if (!didPop) {
//               showDialog<bool?>(
//                 context: context,
//                 builder: (_) => const AlertConfirmExit(),
//               ).then((res) {
//                 if (res != null && res) {
//                   Navigator.pop(context);
//                 }
//               });
//             }
//           },
//           child: const Scaffold(
//             appBar: _BrandDetailHead(),
//             body: _BrandDetailBody(),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class _BrandDetailHead extends StatelessWidget implements PreferredSizeWidget {
//   const _BrandDetailHead();
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<BrandItemBloc>();
//     return BlocBuilder<BrandItemBloc, BrandItemState>(
//       builder: (context, state) {
//         return AppBar(
//           title: Text(state.item.name),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.refresh),
//               onPressed: state.status.reason.isFetching ? null : () => bloc.add(const BrandItemEventLoaded()),
//             )
//           ],
//         );
//       },
//     );
//   }
// }
//
// class _BrandDetailBody extends StatelessWidget {
//   const _BrandDetailBody();
//
//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<BrandItemBloc>();
//     return BlocConsumer<BrandItemBloc, BrandItemState>(
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
//               onPressed: () => bloc.add(const BrandItemEventLoaded()),
//             ),
//           );
//         }
//
//         return const _BrandDetailForm();
//       },
//       listener: (context, state) {
//         // # LOADED #
//         if (state.status.reason.isLoaded) {
//           getIt<EventCrudResult>().load<Brand>(state.item);
//         }
//
//         // # UPDATED #
//         if (state.status.reason.isUpdated) {
//           getIt<EventCrudResult>().update<Brand>(state.item);
//         }
//
//         if (state.status.reason.isUpdating) {
//           FocusManager.instance.primaryFocus?.unfocus();
//         }
//
//         if (state.status.reason.isFailUpdating) {
//           ScaffoldMessenger.of(context)
//             ..clearSnackBars()
//             ..clearMaterialBanners()
//             ..showSnackBar(AppSnackBar("${state.status.err}"));
//         }
//
//         // # DELETED #
//         if (state.status.reason.isDeleted) {
//           Navigator.pop(context);
//           getIt<EventCrudResult>().delete<Brand>(state.item);
//         }
//
//         if (state.status.reason.isDeleting) {
//           FocusManager.instance.primaryFocus?.unfocus();
//         }
//
//         if (state.status.reason.isFailDeleting) {
//           ScaffoldMessenger.of(context)
//             ..removeCurrentSnackBar()
//             ..showSnackBar(
//               AppSnackBar("${state.status.err}"),
//             );
//         }
//       },
//       listenWhen: (prev, next) {
//         return prev.status != next.status;
//       },
//     );
//   }
// }
//
// class _BrandDetailForm extends StatelessWidget {
//   const _BrandDetailForm();
//
//   @override
//   Widget build(BuildContext context) {
//     final bloc = context.read<BrandItemBloc>();
//     return SingleChildScrollView(
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CardForm(
//             child: Wrap(
//               runSpacing: 16.0,
//               children: [
//                 BrandNameTextField(
//                   value: bloc.state.form.name.value,
//                   onChanged: (String value) => bloc.add(BrandItemEventNameChanged(value)),
//                   onValidator: (_) => bloc.state.form.name.error?.errMessage,
//                 ),
//                 BrandDescTextField(
//                   value: bloc.state.form.desc.value,
//                   onChanged: (value) => bloc.add(BrandItemEventDescChanged(value)),
//                   onValidator: (_) => bloc.state.form.desc.error?.errMessage,
//                 ),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Wrap(
//               runSpacing: 16.0,
//               children: [
//                 _BrandDetailFormUpdateButton(
//                   key: Key("brand_detail_form_update_button"),
//                 ),
//                 _BrandDetailFormDeleteButton(
//                   key: Key("brand_detail_form_delete_button"),
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
// class _BrandDetailFormDeleteButton extends StatelessWidget {
//   const _BrandDetailFormDeleteButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BrandItemBloc, BrandItemState>(
//       builder: (context, state) {
//         return SimpleButton(
//           title: "Eliminar",
//           colorPrimary: Colors.white,
//           colorOnPrimary: Colors.red,
//           disable: state.status.reason.isFetching,
//           loading: state.status.reason.isDeleting,
//           onPressed: () {
//             showDialog<bool?>(
//               context: context,
//               builder: (_) => AlertConfirmDelete(title: state.item.name),
//             ).then((accept) {
//               if (accept != null && accept) {
//                 context.read<BrandItemBloc>().add(const BrandItemEventDeleted());
//               }
//             });
//           },
//         );
//       },
//     );
//   }
// }
//
// class _BrandDetailFormUpdateButton extends StatelessWidget {
//   const _BrandDetailFormUpdateButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BrandItemBloc, BrandItemState>(
//       builder: (context, state) {
//         return SimpleButton(
//           title: "Guardar",
//           loading: state.status.reason.isUpdating,
//           disable: state.form.isPure || state.form.isNotValid,
//           onPressed: () => context.read<BrandItemBloc>().add(const BrandItemEventUpdated()),
//         );
//       },
//     );
//   }
// }
