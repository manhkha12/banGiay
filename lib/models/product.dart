import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name:"product_id") required String id,
    required String name,
    required String price,
    required String? stock,
    @JsonKey(name: "image") String? imageUrl,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
