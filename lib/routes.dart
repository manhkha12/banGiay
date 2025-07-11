import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:smart_home/features/common/splash_screen.dart';
import 'package:smart_home/features/intro/intro_screen.dart';
import 'package:smart_home/features/login/component/login_cubit.dart';
import 'package:smart_home/features/login/login_screen.dart';
import 'package:smart_home/features/main_screen.dart';
import 'package:smart_home/features/register/cubit/signup_cubit.dart';
import 'package:smart_home/features/register/register.dart';
import 'package:smart_home/shared/cubits/app_cubit/app_cubit.dart';

class RouteName {
  static const String splash = '/';
  static const String main = '/main';
  static const String register = '/register';
  static const String login = '/login';
  static const String intro = '/intro';
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
    }
    if (settings.name == RouteName.intro) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => IntroScreen(),
      );
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
