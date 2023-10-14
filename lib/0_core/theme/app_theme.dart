import 'package:flutter/material.dart';

import '../../finance_control_ui.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: AppColors.deepBlue,
    colorScheme: const ColorScheme.light(
      primary: AppColors.deepBlue,
      secondary: AppColors.secondaryLight,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundLight,
    textTheme: FinanceTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButton.lightTheme,
  );
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.deepBlue,
    colorScheme: const ColorScheme.light(
      primary: AppColors.deepBlue,
      secondary: AppColors.secondaryDark,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundDark,
    textTheme: FinanceTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButton.darkTheme,
  );
}
