import 'package:flutter/material.dart';
import 'package:smart_home/features/common/splash_screen.dart';
import 'package:smart_home/features/login/login_screen.dart';
import 'package:smart_home/features/main_screen.dart';
import 'package:smart_home/features/register/register.dart';

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
        builder: (context) =>
            const MainScreen(), 
      );
    }

    if(settings.name == RouteName.register){
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const RegisterScreen(),
      );
    }
    if(settings.name == RouteName.login) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const LoginScreen(),
      );
    }

  };
}
