
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
   factory CartItem({
   @JsonKey(name : 'cart_id' ) required String? cartId,
    @JsonKey(name: 'product_id') required String? productId,
    @JsonKey(name :'variant_id') required String? variantId,
    required String? color,
    required String? name,
    required String? image,
    required int? quantity,
    required String? price,
    required String? size,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}