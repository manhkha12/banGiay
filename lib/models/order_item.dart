import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: "order_id") required int orderId,
    @JsonKey(name: "total_price") required String? totalPrice,
    required String? status,
    required List<OrderProductItem> items,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class OrderProductItem with _$OrderProductItem {
  const factory OrderProductItem({
    @JsonKey(name: "product_name") required String? productName,
    required String? size,
    required String? color,
    required int quantity,
    required String? price,
    required String image,
    required String? brand,
  }) = _OrderProductItem;

  factory OrderProductItem.fromJson(Map<String, dynamic> json) =>
      _$OrderProductItemFromJson(json);
}
