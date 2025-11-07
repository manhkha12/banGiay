// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['product_id'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      stock: json['stock'] as String?,
      imageUrl: json['image'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'stock': instance.stock,
      'image': instance.imageUrl,
    };
