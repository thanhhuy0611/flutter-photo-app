import 'package:flutter/material.dart';
import 'package:photo_app/screens/login/index.dart';
import 'package:photo_app/screens/register/index.dart';
import 'package:photo_app/screens/splash/index.dart';


class AppPageRoute {
  static MaterialPageRoute routes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case LoginScreen.PAGE_NAME:
            return const LoginScreen();

          case RegisterScreen.PAGE_NAME:
            return const RegisterScreen();

          case SplashScreen.PAGE_NAME:
          default:
            return const SplashScreen();
        }
      },
    );
  }
}
