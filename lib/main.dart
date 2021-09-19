import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:photo_app/screens/app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get shared preference instance
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  
  // Get theme mode
  final savedThemeMode = await AdaptiveTheme.getThemeMode();

  runApp(PhotoApp(
    preferences: preferences,
    savedThemeMode: savedThemeMode,
  ));
}
