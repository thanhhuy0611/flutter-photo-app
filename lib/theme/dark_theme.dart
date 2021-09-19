import 'package:flutter/material.dart';
import 'package:photo_app/theme/base_theme.dart';

class DarkTheme extends BaseTheme {

  DarkTheme() : super();
  
  @override
  Color get primaryColor => const Color(0xFFFFFFFF);

  @override
  Color get backgroundColor => const Color(0xFF000000);

  @override
  Color get beginGradientColor => const Color(0xFFFF00D6);

  @override
  Color get endGradientColor => const Color(0xFFFF4D00);

  @override
  ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      fontFamily: fontRoboto,
      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline1: headLine1,
        subtitle1: subtitle1,
        button: button,
        bodyText1: bodyText1,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
