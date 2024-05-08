import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get secondary => const Color(0xFFFFFFFF);
  static Color get tertiary => const Color(0xFF000000);
  static Color get onTertiary => const Color(0x80000000);

  static Color get backgroundGray => const Color(0x10000000);
  static Color get backgroundWhite => const Color(0x70FFFFFF);
}
