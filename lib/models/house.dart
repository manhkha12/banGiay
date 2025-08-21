import 'package:freezed_annotation/freezed_annotation.dart';

part 'house.freezed.dart';
part 'house.g.dart';

@freezed
class House with _$House {
  factory House({
    @JsonKey(name: '_id') required String id,
    required String name,
    String? address,
    @JsonKey(name: 'owner_id') required String ownerId,
    @Default([]) List<String> sharedUserIds,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _House;

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);
}
