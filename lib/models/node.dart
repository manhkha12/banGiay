import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/shared/utils/json_converter.dart';

part 'node.freezed.dart';
part 'node.g.dart';

@freezed
class Node with _$Node {
  factory Node({
    @JsonKey(name: '_id') required String id,
    String? name,
    @JsonKey(name: 'gpio_key') required int gpioKey,
    @JsonKey(name: 'gpio_name') required String gpioName,
    required int state,
    @Default([]) List<NodeTimer> timers,
    @DateTimeConverter() required DateTime updatedAt,
  }) = _Node;

  Node._();

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  bool get isOnline => state == 1;

  int get reverseState => state == 1 ? 0 : 1;
}

@freezed
class NodeTimer with _$NodeTimer {
  factory NodeTimer({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'start_at') required int startAt,
    @JsonKey(name: 'end_at') required int endAt,
    @Default(true) @JsonKey(name: 'active') bool isActive,
  }) = _NodeTimer;

  NodeTimer._();

  factory NodeTimer.fromJson(Map<String, dynamic> json) =>
      _$NodeTimerFromJson(json);
}
