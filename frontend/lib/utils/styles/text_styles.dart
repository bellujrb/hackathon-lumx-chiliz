import 'package:flutter/material.dart';
import 'package:frontend/utils/styles/colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get title => TextStyle(
      color: AppColors.tertiary,
      fontFamily: 'Satoshi',
      fontSize: 24,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  TextStyle get titleSuper => TextStyle(
      color: AppColors.tertiary,
      fontFamily: 'Satoshi',
      fontSize: 64,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  TextStyle get smallBlack => TextStyle(
      color: AppColors.tertiary,
      fontFamily: 'Satoshi',
      fontSize: 16,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);
  TextStyle get miniBigBlack => TextStyle(
      color: AppColors.tertiary,
      fontFamily: 'Satoshi',
      fontSize: 32,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  TextStyle get bigBlack => TextStyle(
      color: AppColors.tertiary,
      fontFamily: 'Satoshi',
      fontSize: 48,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);
  TextStyle get superSmallBlack50 => TextStyle(
      color: AppColors.onTertiary,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);
  TextStyle get smallBlack50 => TextStyle(
      color: AppColors.onTertiary,
      fontSize: 18,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);
  TextStyle get mediumBlack50 => TextStyle(
      color: AppColors.onTertiary,
      fontFamily: 'Satoshi',
      fontSize: 24,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);
  TextStyle get smallWhite => TextStyle(
      color: AppColors.secondary,
      fontFamily: 'Satoshi',
      fontSize: 16,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.none);
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
