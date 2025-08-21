// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NodeImpl _$$NodeImplFromJson(Map<String, dynamic> json) => _$NodeImpl(
      id: json['_id'] as String,
      name: json['name'] as String?,
      gpioKey: (json['gpio_key'] as num).toInt(),
      gpioName: json['gpio_name'] as String,
      state: (json['state'] as num).toInt(),
      timers: (json['timers'] as List<dynamic>?)
              ?.map((e) => NodeTimer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      updatedAt:
          const DateTimeConverter().fromJson(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$NodeImplToJson(_$NodeImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'gpio_key': instance.gpioKey,
      'gpio_name': instance.gpioName,
      'state': instance.state,
      'timers': instance.timers,
      'updatedAt': const DateTimeConverter().toJson(instance.updatedAt),
    };

_$NodeTimerImpl _$$NodeTimerImplFromJson(Map<String, dynamic> json) =>
    _$NodeTimerImpl(
      id: json['_id'] as String,
      startAt: (json['start_at'] as num).toInt(),
      endAt: (json['end_at'] as num).toInt(),
      isActive: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$NodeTimerImplToJson(_$NodeTimerImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
      'active': instance.isActive,
    };
