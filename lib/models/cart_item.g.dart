// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      cartId: json['cart_id'] as String?,
      productId: json['product_id'] as String?,
      variantId: json['variant_id'] as String?,
      color: json['color'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: json['price'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'product_id': instance.productId,
      'variant_id': instance.variantId,
      'color': instance.color,
      'name': instance.name,
      'image': instance.image,
      'quantity': instance.quantity,
      'price': instance.price,
      'size': instance.size,
    };
