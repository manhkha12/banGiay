import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  factory Room({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'house_id') required String houseId,
    String? icon,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
