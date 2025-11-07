import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant.freezed.dart';
part 'variant.g.dart';

@freezed
class Variant with _$Variant {
  const factory Variant({
    @JsonKey(name: 'variant_id') required int? variantId,
    required String? size,
    required String? color,
    required int? stock,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) => _$VariantFromJson(json);
}
