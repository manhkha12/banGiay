import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_device_info.freezed.dart';
part 'short_device_info.g.dart';

@freezed
class ShortDeviceInfo with _$ShortDeviceInfo {
  factory ShortDeviceInfo({
    @JsonKey(name: 'mcu_type') required String mcuType,
    @JsonKey(name: 'firmware_version') required String firmwareVersion,
    @JsonKey(name: 'product_version') required String productVersion,
    @JsonKey(name: 'mac_address') required String macAddress,
    @JsonKey(name: 'chip_id') required String chipId,
    @JsonKey(name: 'device_name') required String deviceName,
  }) = _ShortDeviceInfo;

  factory ShortDeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$ShortDeviceInfoFromJson(json);
}

@freezed
class WiFiInfo with _$WiFiInfo {
  factory WiFiInfo({
    @JsonKey(name: 'rssi') required int rssi,
    @JsonKey(name: 'ssid') required String ssid,
  }) = _WiFiInfo;

  WiFiInfo._();

  factory WiFiInfo.fromJson(Map<String, dynamic> json) =>
      _$WiFiInfoFromJson(json);

  double get signalStrength {
    if (rssi > -70) {
      return 1;
    }
    if (rssi > -85) {
      return 0.5;
    }
    return 0;
  }
}
