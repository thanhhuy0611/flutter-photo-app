import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class SettingThemeFloatingButton extends StatelessWidget {
  const SettingThemeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Theme.of(context).primaryColor.withOpacity(0.5),
        child: IconButton(
          icon: isDarkMode
              ? const Icon(Icons.light_mode_rounded, color: Colors.amber)
              : const Icon(Icons.dark_mode_outlined, color: Colors.amber),
          onPressed: () {
            if (isDarkMode) {
              // sets theme mode to light
              AdaptiveTheme.of(context).setLight();
            } else {
              // sets theme mode to dark
              AdaptiveTheme.of(context).setDark();
            }
          },
        ),
      ),
    );
  }

  static FloatingActionButtonLocation get location => FloatingActionButtonLocation.miniStartTop;
}