import 'package:flutter/material.dart';

class DarkTheme {
  
  static Color get backgroundColor => const Color(0xFF000000);
  static Color get primaryColor => const Color(0xFFFFFFFF);
  static Color get beginGradientColor => const Color(0xFFFF00D6);
  static Color get endGradientColor => const Color(0xFFFF4D00);
  static String get fontRoboto => 'Roboto';
  static String get fontComfortaa => 'Comfortaa';

  static TextStyle? headLine1 = TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500, fontFamily: fontRoboto);
  static TextStyle? button = TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, fontFamily: fontRoboto);
  static TextStyle? subtitle1 = const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold);
  static TextStyle? bodyText1 = const TextStyle(fontSize: 13.0);
  

  static ThemeData get theme {
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
