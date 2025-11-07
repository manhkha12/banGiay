// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['review_id'] as String,
      productId: json['product_id'] as String,
      userId: json['user_id'] as String,
      comment: json['comment'] as String,
      rating: (json['rating'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'review_id': instance.id,
      'product_id': instance.productId,
      'user_id': instance.userId,
      'comment': instance.comment,
      'rating': instance.rating,
      'created_at': instance.createdAt.toIso8601String(),
      'username': instance.username,
    };
