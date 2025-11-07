// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      variantId: (json['variant_id'] as num?)?.toInt(),
      size: json['size'] as String?,
      color: json['color'] as String?,
      stock: (json['stock'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) =>
    <String, dynamic>{
      'variant_id': instance.variantId,
      'size': instance.size,
      'color': instance.color,
      'stock': instance.stock,
    };
