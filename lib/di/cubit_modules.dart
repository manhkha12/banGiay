import 'package:get_it/get_it.dart';
import 'package:smart_home/features/device/add_module/cubit/add_module_cubit.dart';
import 'package:smart_home/features/device/module_page/module_cubit/module_cubit.dart';
import 'package:smart_home/features/home/cubit/home_page_cubit.dart';
import 'package:smart_home/features/login/component/login_cubit.dart';
import 'package:smart_home/features/register/cubit/signup_cubit.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';
import 'package:smart_home/shared/cubits/socket_cubit/socket_cubit.dart';


Future<void> registerCubitModules(GetIt getIt) async {
  // register cubit modules
  getIt
    ..registerLazySingleton(() => AppCubit(authRepository: getIt()))
    ..registerFactory(
      () => SignupCubit(
        authRepository: getIt(),
      ),
    )
    ..registerFactory(
      () => LoginCubit(
        authRepository: getIt(),
        appCubit: getIt(),
      ),
    )
    ..registerFactory(
      () => AddModuleCubit(
        moduleRespository: getIt(),
        appCubit: getIt(),
        userRepository: getIt(),
      ),
    )
    ..registerFactory(
      () => ModuleCubit(
        moduleRespository: getIt(),
        userRepository: getIt(),
      ),
    )
    ..registerFactory(()=> HomePageCubit(
      moduleRespository: getIt(),
    ));
    // ..registerLazySingleton(
    //   () => SocketCubit(userRepository: getIt()),
    // )
    // ..registerFactoryParam<ModuleDetailsCubit, Module, dynamic>(
    //   (module, _) => ModuleDetailsCubit(
    //     moduleRespository: getIt(),
    //     userRepository: getIt(),
    //     module: module,
    //   ),
    // )
    
    
    // ..registerFactory(() => RenameNodeCubit(moduleRespository: getIt()))
    // ..registerFactory(
    //     () => GetHistoryConnectionCubit(moduleRespository: getIt()))
    
    
    // ..registerFactoryParam<ModuleMenuCubit, Module, dynamic>(
    //   (module, _) => ModuleMenuCubit(
    //     moduleRespository: getIt(),
    //     userRepository: getIt(),
    //     module: module,
    //   ),
    // );
}
