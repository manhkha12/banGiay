// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'variants': instance.variants,
    };
