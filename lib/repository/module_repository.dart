import 'package:smart_home/data/local/app_provider.dart';
import 'package:smart_home/data/remote/module_api.dart';

class ModuleRespository {
  final ModuleApi moduleApi;
  final AppProvider appProvider;

  ModuleRespository(
    this.moduleApi,
    this.appProvider,
  );

  Future<List<dynamic>> getNearbyWiFi() async {
    return await moduleApi.getNearbyWiFi();
  }

}