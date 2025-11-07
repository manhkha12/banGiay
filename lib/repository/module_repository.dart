

import 'package:shoe_store/data/local/app_provider.dart';
import 'package:shoe_store/data/remote/module_api.dart';

class ModuleRespository {
  final ModuleApi moduleApi;
  final AppProvider appProvider;

  ModuleRespository(
    this.moduleApi,
    this.appProvider,
  );
}