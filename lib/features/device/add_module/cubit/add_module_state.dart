import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/models/short_device_info.dart';


part 'add_module_state.freezed.dart';

@freezed
class AddModuleState with _$AddModuleState {
  factory AddModuleState({
    String? ownerId,
    @Default(true) bool isGettingInfo,
    @Default(false) bool isRefreshing,
    ShortDeviceInfo? deviceInfo,
    @Default([]) List<WiFiInfo> nearbyWifi,
    @Default(false) bool isConnecting,
    @Default(false) bool gettingInfoFailed,
    Module? addedModule,
    @Default(false) bool isConnectFailed,
  }) = _AddModuleState;

  AddModuleState._();

  bool get isReady => ownerId != null;
}
