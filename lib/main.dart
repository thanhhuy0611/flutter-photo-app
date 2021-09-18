import 'package:flutter/material.dart';
import 'package:photo_app/screens/app/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get shared preference instance
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  runApp(PhotoApp(preferences: preferences));
}
