import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ja'),
  ];

  static Language getLanguage(String code) {
    switch (code) {
      case 'ja':
        return Language(
          code: code,
          name: '日本語',
          englishName: 'Japanese',
          flag: '🇯🇵',
          countryCode: 'JP',
        );
      default:
        return Language(
          code: code,
          name: 'English',
          englishName: 'English',
          flag: '🇺🇸',
          countryCode: 'US',
        );
    }
  }
}

class Language {
  String code;
  String name;
  String englishName;
  String flag;
  String countryCode;

  Language({
    required this.code,
    required this.name,
    required this.englishName,
    required this.flag,
    required this.countryCode,
  });
}
