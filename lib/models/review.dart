import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.g.dart';
part 'review.freezed.dart';
@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name:"review_id") required String id,
    @JsonKey(name:"product_id")required String productId,
    @JsonKey(name:"user_id")required String userId,
    required String comment,
    required int rating,
    @JsonKey(name: "created_at") required DateTime createdAt,
    required String username
 

  }) = _Review;
  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}