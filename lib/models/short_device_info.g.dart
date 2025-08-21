// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShortDeviceInfoImpl _$$ShortDeviceInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ShortDeviceInfoImpl(
      mcuType: json['mcu_type'] as String,
      firmwareVersion: json['firmware_version'] as String,
      productVersion: json['product_version'] as String,
      macAddress: json['mac_address'] as String,
      chipId: json['chip_id'] as String,
      deviceName: json['device_name'] as String,
    );

Map<String, dynamic> _$$ShortDeviceInfoImplToJson(
        _$ShortDeviceInfoImpl instance) =>
    <String, dynamic>{
      'mcu_type': instance.mcuType,
      'firmware_version': instance.firmwareVersion,
      'product_version': instance.productVersion,
      'mac_address': instance.macAddress,
      'chip_id': instance.chipId,
      'device_name': instance.deviceName,
    };

_$WiFiInfoImpl _$$WiFiInfoImplFromJson(Map<String, dynamic> json) =>
    _$WiFiInfoImpl(
      rssi: (json['rssi'] as num).toInt(),
      ssid: json['ssid'] as String,
    );

Map<String, dynamic> _$$WiFiInfoImplToJson(_$WiFiInfoImpl instance) =>
    <String, dynamic>{
      'rssi': instance.rssi,
      'ssid': instance.ssid,
    };
