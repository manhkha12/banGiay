// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModuleImpl _$$ModuleImplFromJson(Map<String, dynamic> json) => _$ModuleImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      mcuType: json['mcu_type'] as String,
      chipId: json['chip_id'] as String,
      productVersion: json['product_version'] as String,
      firmwareVersion: json['firmware_version'] as String,
      houseId: json['home_id'] as String?,
      roomId: json['room_id'] as String?,
      userIds:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ownerId: json['owner_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      nodes: (json['nodes'] as List<dynamic>?)
              ?.map((e) => Node.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
      activeAt: const DateTimeOrNullConverter()
          .fromJson(json['active_at'] as String?),
      macAddress: json['mac_address'] as String,
      productCopyright: json['product_copyright'] as String?,
      connection: json['connection'] == null
          ? null
          : ConnectionInfo.fromJson(json['connection'] as Map<String, dynamic>),
      isOnline: json['is_online'] as bool,
    );

Map<String, dynamic> _$$ModuleImplToJson(_$ModuleImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'mcu_type': instance.mcuType,
      'chip_id': instance.chipId,
      'product_version': instance.productVersion,
      'firmware_version': instance.firmwareVersion,
      'home_id': instance.houseId,
      'room_id': instance.roomId,
      'users': instance.userIds,
      'owner_id': instance.ownerId,
      'created_at': instance.createdAt?.toIso8601String(),
      'nodes': instance.nodes,
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
      'active_at': const DateTimeOrNullConverter().toJson(instance.activeAt),
      'mac_address': instance.macAddress,
      'product_copyright': instance.productCopyright,
      'connection': instance.connection,
      'is_online': instance.isOnline,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$ConnectionInfoImpl _$$ConnectionInfoImplFromJson(Map<String, dynamic> json) =>
    _$ConnectionInfoImpl(
      ssid: json['ssid'] as String?,
      ipAddress: json['ip_address'] as String?,
    );

Map<String, dynamic> _$$ConnectionInfoImplToJson(
        _$ConnectionInfoImpl instance) =>
    <String, dynamic>{
      'ssid': instance.ssid,
      'ip_address': instance.ipAddress,
    };
