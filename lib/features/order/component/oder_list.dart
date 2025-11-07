// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shoe_store/features/order/cubit/order_cubit.dart';
// import 'package:shoe_store/features/order/cubit/order_state.dart';

// import 'package:shoe_store/shared/extensions/build_context_extension.dart';
// import 'package:shoe_store/shared/widgets/app_text.dart';

// class OrderList extends StatelessWidget {
//   final Order status;
//   const OrderList({super.key, required this.status});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<OrderCubit, OrderState>(builder: (context, state) {
//       final allOrders = state.orders;

//       final filteredOrders = allOrders!
//           .where(
//             (order) => order.status == status.name,
//           )
//           .toList();

//       if (filteredOrders.isEmpty) {
//         return const Center(child: Text('No orders in this status.'));
//       }

//       return ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: filteredOrders.length,
//         itemBuilder: (context, index) {
//           final order = filteredOrders[index];
//           return Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 10,
//                   color: Colors.grey.shade200,
//                   offset: const Offset(0, 2),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 100,
//                   width: 100,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: CachedNetworkImage(
//                       imageUrl: order.items.first.image,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Stack(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         AppText(
//                           order.items.first.productName ?? '',
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                           height: 30,
//                           width: 85,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                   color: context.colors.black.withOpacity(0.5)),
//                               color: context.colors.dimGrey),
//                           child: Padding(
//                             padding: const EdgeInsets.all(5),
//                             child: Center(
//                               child: AppText(
//                                 '${order.items.first.color} - ${order.items.first.size}',
//                                 fontSize: 13,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         AppText(
//                           'Tong tien: đ${order.totalPrice}',
//                           color: context.colors.textError,
//                         )
//                       ],
//                     ),
//                     Positioned(
//                       right: 1,
//                       top: 40,
//                       child: AppText(
//                         'x${order.items.first.quantity}',
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           );
//         },
//       );
//     });
//   }
// }
