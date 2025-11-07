import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

import 'package:shoe_store/features/order/cubit/order_cubit.dart';
import 'package:shoe_store/features/order/cubit/order_state.dart';
import 'package:shoe_store/gen/assets.gen.dart';
import 'package:shoe_store/shared/extensions/build_context_extension.dart';

import 'package:shoe_store/shared/widgets/app_text.dart';
import 'package:shoe_store/shared/widgets/app_text_icon.dart';
import 'package:shoe_store/shared/widgets/buttons/app_button.dart';
import 'package:shoe_store/shared/widgets/custom_app_bar.dart';


class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
// class OrderScreen extends StatefulWidget {
//   final List<CartItem> selectedItems;
//   const OrderScreen({super.key, required this.selectedItems});

//   @override
//   State<OrderScreen> createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   late final OrderCubit orderCubit;
//   @override
//   void initState() {
//     orderCubit = context.read<OrderCubit>();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.colors.shoebackground,
//       appBar: CustomAppBar(
//         title: 'Mua Hàng',
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: context.colors.white,
//                     border: Border.all(color: Colors.black)),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             AppText('ten'),
//                             AppText("dia chi"),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       child: Assets.icons.arrowRight.svg(),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: ListView.separated(
//                   itemBuilder: (context, index) {

//                     // co the lam theo huong add vao orderItem model then setOrderItem into cubit
//                     final cartItem = widget.selectedItems[index];
                    
//                     return ShowOrder(
//                       id: cartItem.cartId,
//                       imageUrl: cartItem.image ?? "",
//                       nameProduct: cartItem.name ?? "",
//                       price: cartItem.price.toString(),
//                       quantity: cartItem.quantity,
//                     );
//                   },
//                   separatorBuilder: (context, index) => SizedBox(
//                     height: 15,
//                   ),
//                   itemCount: widget.selectedItems.length,
//                   physics: NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: context.colors.white,
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Row(
//                         children: [
//                           //voucher du an hien tai chua co, co the mo rong sau nay
//                           Expanded(
//                             child: AppTextIcon(
//                               'Voucher',
//                               icon: Assets.icons.voucher.path,
//                               iconColor: context.colors.textError,
//                               iconSize: 18,
//                               fontSize: 18,
//                               spacing: 10,
//                             ),
//                           ),
//                           AppTextIcon('Xem tat ca',
//                               icon: Assets.icons.arrowRight.path,
//                               color: context.colors.black.withOpacity(0.5),
//                               fontSize: 15,
//                               iconColor: context.colors.black.withOpacity(0.5),
//                               isReverse: true,
//                               spacing: 8),
//                         ],
//                       ),
//                     ),
//                     Divider(
//                       color: context.colors.divider,
//                       height: 1,
//                     ),
//                     AppText('-------------------')
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: context.colors.white,
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: AppText(
//                               'Phương thức thanh toán',
//                               fontSize: 17,
//                               fontWeight: FontWeight.w600,
//                               color: context.colors.black,
//                             ),
//                           ),
//                           AppTextIcon('Xem tat ca',
//                               icon: Assets.icons.arrowRight.path,
//                               color: context.colors.black.withOpacity(0.5),
//                               fontSize: 15,
//                               iconColor: context.colors.black.withOpacity(0.5),
//                               isReverse: true,
//                               spacing: 8),
//                         ],
//                       ),
//                     ),
//                     Divider(
//                       color: context.colors.divider,
//                       height: 1,
//                     ),
//                     AppText('-------------------')
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 width: double.infinity,
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: context.colors.white,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     AppText(
//                       'Chi tiết thanh toán',
//                       fontSize: 17,
//                       fontWeight: FontWeight.w600,
//                       color: context.colors.black,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           child: AppText(
//                             'Tổng tiền hàng',
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500,
//                             color: context.colors.black.withOpacity(0.6),
//                           ),
//                         ),
//                         AppText(
//                           'đ${widget.selectedItems.fold(0.0, (previousValue, element) {
//                             final price =
//                                 double.tryParse(element.price ?? '0') ?? 0;
//                             final quantity = element.quantity ?? 1;
//                             final totalPrice = previousValue + price * quantity;
//                             orderCubit.setTotalPrice(totalPrice);
//                             print("Total price: $totalPrice");
//                             return totalPrice;
//                           })}',
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: context.colors.black,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           child: AppText(
//                             'Phí vận chuyển',
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500,
//                             color: context.colors.black.withOpacity(0.6),
//                           ),
//                         ),
//                         AppText(
//                           'đ0',
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: context.colors.black,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           child: AppText(
//                             'Giảm giá',
//                             fontSize: 17,
//                             fontWeight: FontWeight.w500,
//                             color: context.colors.black.withOpacity(0.6),
//                           ),
//                         ),
//                         AppText(
//                           'đ0',
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           color: context.colors.black,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               RichText(
//                   text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'Khi nhấn vào nút đặt hàng, bạn đã đồng ý với     ',
//                     style: TextStyle(
//                       color: context.colors.black,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'Điều khoản và Chính sách ',
//                     style: TextStyle(color: context.colors.textError),
//                   ),
//                   TextSpan(
//                     text: 'của chúng tôi',
//                     style: TextStyle(
//                       color: context.colors.black,
//                     ),
//                   ),
//                 ],
//               )),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BlocListener<OrderCubit,OrderState>(
//         listener: (context, state) {
//           if (state.isLoading) {
//             showDialog(
//               context: context,
//               builder: (context) => Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );
//           } else if (state.isOrderSuccess) {
//             Navigator.pop(context);
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 title: Text('Đặt hàng thành công'),
//                 content: Text('Cảm ơn bạn đã đặt hàng!'),
//                 actions: [
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: Text('OK'),
//                   ),
//                 ],
//               ),
//             );
//           }
//           // else if(state.is)
//         },
//         child: Container(
//           color: context.colors.white,
//           height: 70,
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 AppText(
//                   'Tổng cộng: ',
//                   fontSize: 16,
//                   color: context.colors.black,
//                 ),
//                 AppText(
//                   'đ${widget.selectedItems.fold(0.0, (previousValue, element) {
//                     final price = double.tryParse(element.price ?? '0') ?? 0;
//                     final quantity = element.quantity ?? 1;
//                     return previousValue + price * quantity;
//                   })}',
//                   fontSize: 17,
//                   fontWeight: FontWeight.w600,
//                   color: context.colors.black,
//                 ),
//                 Container(
//                   height: 45,
//                   width: context.width * 0.25,
//                   child: Material(
//                     elevation: 4,
//                     color: context.colors.onlineColor,
//                     borderRadius: BorderRadius.circular(5),
//                     child: InkWell(
//                       onTap: () {
//                         orderCubit.createOrder();
                        
                         
                        
//                       },
//                       child: Center(child: AppText('Mua hàng', fontSize: 16)),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ShowOrder extends StatelessWidget {
//   final String? id;
//   final String? color;
//   final String? size;
//   final String price;
//   final int? quantity;
//   final String nameProduct;
//   final String imageUrl;
//   const ShowOrder(
//       {super.key,
//       required this.id,
//       required this.imageUrl,
//       required this.nameProduct,
//       this.color,
//       this.size,
//       required this.price,
//       required this.quantity});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: context.colors.white,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 25),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: CachedNetworkImage(
//                       imageUrl: imageUrl,
//                       height: 100,
//                       width: 100,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       AppText(
//                         nameProduct,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       SizedBox(
//                         height: 55,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           AppText(
//                             "đ$price",
//                             fontSize: 15,
//                           ),
//                           const SizedBox(
//                             width: 75,
//                           ),
//                           AppText(
//                             "x$quantity",
//                             fontSize: 14,
//                           ),
//                         ],
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Divider(
//               color: context.colors.divider,
//               height: 1,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 25),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: AppText(
//                       'Loi nhan cho shop',
//                       fontSize: 17,
//                       fontWeight: FontWeight.w500,
//                       color: context.colors.black,
//                     ),
//                   ),
//                   AppTextIcon(
//                     'De lai loi nhan',
//                     icon: Assets.icons.arrowRight.path,
//                     color: context.colors.black.withOpacity(0.5),
//                     fontSize: 15,
//                     iconColor: context.colors.black.withOpacity(0.5),
//                     isReverse: true,
//                     spacing: 8,
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: context.colors.divider,
//               height: 1,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 25),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: AppText(
//                       'Phương thức vận chuyển',
//                       fontSize: 17,
//                       fontWeight: FontWeight.w600,
//                       color: context.colors.black,
//                     ),
//                   ),
//                   AppTextIcon(
//                     'Xem tat ca',
//                     icon: Assets.icons.arrowRight.path,
//                     color: context.colors.black.withOpacity(0.5),
//                     fontSize: 15,
//                     iconColor: context.colors.black.withOpacity(0.5),
//                     isReverse: true,
//                     spacing: 8,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: 50,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   border: Border.all(color: context.colors.onlineColor)),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 AppText(
//                   'Duoc dong kiem',
//                   color: context.colors.black.withOpacity(0.5),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   height: 19,
//                   width: 17,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                           color: context.colors.black.withOpacity(0.5))),
//                   child: Center(child: AppText('?')),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Divider(
//               color: context.colors.divider,
//               height: 1,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 10),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: AppText('Tong so tien'),
//                   ),
//                   AppText(
//                     'đ$price',
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: context.colors.black,
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
