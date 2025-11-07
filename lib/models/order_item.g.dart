// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      orderId: (json['order_id'] as num).toInt(),
      totalPrice: json['total_price'] as String?,
      status: json['status'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'items': instance.items,
    };

_$OrderProductItemImpl _$$OrderProductItemImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductItemImpl(
      productName: json['product_name'] as String?,
      size: json['size'] as String?,
      color: json['color'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      price: json['price'] as String?,
      image: json['image'] as String,
      brand: json['brand'] as String?,
    );

Map<String, dynamic> _$$OrderProductItemImplToJson(
        _$OrderProductItemImpl instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'size': instance.size,
      'color': instance.color,
      'quantity': instance.quantity,
      'price': instance.price,
      'image': instance.image,
      'brand': instance.brand,
    };
