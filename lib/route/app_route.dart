import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_app/screens/splash/index.dart';


class AppPageRoute {
  static MaterialPageRoute routes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case SplashScreen.PAGE_NAME:
          default:
            return const SplashScreen();

        }
      },
    );
  }
}
