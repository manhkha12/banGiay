import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:shoe_store/features/order/component/oder_list.dart';
import 'package:shoe_store/features/order/cubit/order_cubit.dart';
import 'package:shoe_store/features/order/cubit/order_state.dart';

import 'package:shoe_store/shared/extensions/build_context_extension.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/custom_app_bar.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
// class OrderDetail extends StatefulWidget {
//   const OrderDetail({super.key});

//   @override
//   State<OrderDetail> createState() => _OrderDetailState();
// }

// class _OrderDetailState extends State<OrderDetail> {
//   Order selectedOrder = Order.pending;
//   String? userId;
//   Future<void> _init() async {
//     final prefs = await SharedPreferences.getInstance();
//     userId = prefs.getInt('user_id')?.toString();
//     print('userId: $userId');

//     if (mounted && userId != null) {
//       context.read<OrderCubit>().getOrder(userId);
//     }
//   }

//   @override
//   @override
//   void initState() {
//     super.initState();
//     _init();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         title: 'My order',
//       ),
//       body: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: Order.values.map(
//                 (status) {
//                   final isSelected = status == selectedOrder;
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedOrder = status;
//                       });
//                     },
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                       child: Column(
//                         children: [
//                           AppText(
//                             status.title,
//                             style: TextStyle(
//                               color: isSelected
//                                   ? context.colors.onlineColor
//                                   : Colors.black,
//                               fontWeight: isSelected
//                                   ? FontWeight.bold
//                                   : FontWeight.normal,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 3,
//                           ),
//                           if (isSelected)
//                             Container(
//                               margin: const EdgeInsets.only(top: 4),
//                               height: 2,
//                               width: context.width * 0.1 + 15,
//                               color: context.colors.onlineColor,
//                             )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ).toList(),
//             ),
//           ),
//           Divider(
//             height: 1,
//             color: context.colors.divider,
//           ),
//           Expanded(
//             child: IndexedStack(
//               index: selectedOrder.index,
//               children: [
//                 OrderList(status: Order.pending),
//                 OrderList(status: Order.processing),
//                 OrderList(status: Order.shipped),
//                 OrderList(status: Order.delivered),
//                 OrderList(status: Order.cancelled),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
