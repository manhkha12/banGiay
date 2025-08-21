import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/models/node.dart';
import 'package:smart_home/shared/utils/json_converter.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
class Module with _$Module {
  factory Module({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'mcu_type') required String mcuType,
    @JsonKey(name: 'chip_id') required String chipId,
    @JsonKey(name: 'product_version') required String productVersion,
    @JsonKey(name: 'firmware_version') required String firmwareVersion,
    @JsonKey(name: 'home_id') String? houseId,
    @JsonKey(name: 'room_id') String? roomId,
    @JsonKey(name: 'users') List<String>? userIds,
    @JsonKey(name: 'owner_id') String? ownerId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @Default([]) List<Node> nodes,
    // @Default([]) List<Sensor> sensors,
    @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime? updatedAt,
    @JsonKey(name: 'active_at') @DateTimeOrNullConverter() DateTime? activeAt,
    @JsonKey(name: 'mac_address') required String macAddress,
    @JsonKey(name: 'product_copyright') String? productCopyright,
    ConnectionInfo? connection,
    @JsonKey(name: 'is_online') required bool isOnline,
  }) = _Module;

  Module._();

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);

  int get totalControlItems => nodes.length; //+ sensors.length
}

@freezed
class ConnectionInfo with _$ConnectionInfo {
  factory ConnectionInfo({
    String? ssid,
    @JsonKey(name: 'ip_address') String? ipAddress,
  }) = _ConnectionInfo;

  factory ConnectionInfo.fromJson(Map<String, dynamic> json) =>
      _$ConnectionInfoFromJson(json);
}
