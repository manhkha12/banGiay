import 'package:smart_home/data/local/app_provider.dart';
import 'package:smart_home/data/remote/module_api.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/models/short_device_info.dart';
import 'package:smart_home/models/weather_forecast.dart';

class ModuleRespository {
  final ModuleApi moduleApi;
  final AppProvider appProvider;

  ModuleRespository(
    this.moduleApi,
    this.appProvider,
  );

  // Future<List<WiFiInfo>> getNearbyWiFi() async {
  //   final resp = await moduleApi.getNearbyWiFi();
  //   final List<WiFiInfo> wifiInfos =
  //       (resp).map((e) => WiFiInfo.fromJson(e)).toList();
  //   wifiInfos.sort((a, b) => a.rssi > b.rssi ? 0 : 1);
  //   return wifiInfos;
  // }
  Future<List<WiFiInfo>> getNearbyWiFi() async {
  try {
    print('📡 Sending request to /nearby_wifi...');
    final resp = await moduleApi.getNearbyWiFi();
    print('📡 Response from /nearby_wifi: $resp');
    
    final List<WiFiInfo> wifiInfos =
        (resp).map((e) => WiFiInfo.fromJson(e)).toList();

    wifiInfos.sort((a, b) => a.rssi > b.rssi ? 0 : 1);
    return wifiInfos;
  } catch (e) {
    return []; 
  }
}
  // Future<ShortDeviceInfo> getDeviceInfo() async {
  //   final resp = await moduleApi.getShortDeviceInfo();
  //   return ShortDeviceInfo.fromJson(resp);
  // }

Future<ShortDeviceInfo> getDeviceInfo() async {
  try {
    final resp = await moduleApi.getShortDeviceInfo();
    print('📟 Parsed ShortDeviceInfo JSON: $resp');
    return ShortDeviceInfo.fromJson(resp);
  } catch (e, stack) {
    print('❌ Error parsing ShortDeviceInfo: $e');
    print('📛 Stacktrace: $stack');
    // Tùy ý: ném lỗi ra hoặc trả 1 instance mặc định
    throw Exception('Failed to get or parse device info');
  }
}

  // Future<void> connectWifi(String ssid, String password, String ownerId) async {
  //   await moduleApi.connectWifi(ssid, password, ownerId);
  // }

  Future<void> connectWifi(String ssid, String password, String ownerId) async {
  try {
    await moduleApi.connectWifi(ssid, password, ownerId);
    print('✅ [Repository] connectWifi success');
  
  } catch (e) {
    rethrow;
  }
}

 Future<Module> moduleDetails(String id) async {
    final resp = await moduleApi.moduleDetail(id);
    return Module.fromJson(resp);
  }

  Future<List<Module>> getModules() async {
    final resp = await moduleApi.getModules();
    return resp.map((e) => Module.fromJson(e)).toList();
  }
  Future<WeatherForecast> getWeatherForecast() async {
    final resp = await moduleApi.getWeatherForecast();
    return WeatherForecast.fromJson(resp);
  }
}