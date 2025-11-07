import 'package:freezed_annotation/freezed_annotation.dart';
import 'category.dart';
import 'variant.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed
class Detail with _$Detail {
  const factory Detail({

    Category? category, // Cho phép category là null
    @Default([]) List<Variant> variants,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
