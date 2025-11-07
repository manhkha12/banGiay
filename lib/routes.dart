import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shoe_store/features/common/splash_screen.dart';
import 'package:shoe_store/features/login/cubit/login_cubit.dart';
import 'package:shoe_store/features/login/login_screen.dart';
import 'package:shoe_store/features/main_screen.dart';
import 'package:shoe_store/features/register/cubit/signup_cubit.dart';
import 'package:shoe_store/features/register/register.dart';
import 'package:shoe_store/shared/cubits/app_cubit/app_cubit.dart';


class RouteName {
  static const String splash = '/';
  static const String main = '/main';
  static const String register = '/register';
  static const String login = '/login';
}

RouteFactory onGenerateRoutes() {
  return (RouteSettings settings) {
    if (settings.name == RouteName.splash) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const SplashScreen(),
      );
    }
    if (settings.name == RouteName.main) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<AppCubit>(),
          child: const MainScreen(),
        ),
      );
      // return MaterialPageRoute(
      //   settings: settings,
      //   builder: (context) => const MainScreen(),
      // );
    }

        if (settings.name == RouteName.register) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<SignupCubit>(),
          child: const RegisterScreen(),
        ),
      );
    }
    if (settings.name == RouteName.login) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocProvider(
          create: (_) => GetIt.I<LoginCubit>(),
          child: const LoginScreen(),
        ),
      );
    }

  };
}
