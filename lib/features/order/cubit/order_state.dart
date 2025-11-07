// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:shoe_store/shared/enums/order.dart';
// import 'package:shoe_store/shared/models/order_item.dart';

// part 'order_state.freezed.dart';

// @freezed
// class OrderState with _$OrderState {
//   factory OrderState({
//     @Default(false) bool isLoading,
//     double? totalPrice,
//     String? productId,
//     String? color,
//     int? quantity,
//     String? price,
//     String? size,
//     @Default([]) List<OrderItem>? orders,
//     @Default(false) bool isOrderSuccess,
//     @Default("") String errorMessage,
//   }) = _OrderState;

//   OrderState._();

//   Map<String, dynamic> toOrderParams() {
//     return {
//       "total_price": totalPrice ?? 0.0,
//       "items": [
//         {
//           "product_id": productId ?? "",
//           "size": size ?? "",
//           "color": color ?? "",
//           "quantity": quantity ?? 1,
//           "price": price ?? "",
//         }
//       ]
//     };
//   }
// }
