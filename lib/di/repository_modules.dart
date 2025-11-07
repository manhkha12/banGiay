import 'package:get_it/get_it.dart';
import 'package:shoe_store/repository/auth_repository.dart';
import 'package:shoe_store/repository/module_repository.dart';
import 'package:shoe_store/repository/user_repository.dart';


Future<void> registerRepositoryModules(GetIt getIt) async {
  getIt
    ..registerLazySingleton(() => ModuleRespository(getIt(), getIt()))
    ..registerLazySingleton(() => AuthRepository(getIt(), getIt()))
    ..registerLazySingleton(
      () => UserRepository(appProvider: getIt(), appConfig: getIt()),
    );
}
