import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class FinanceTextTheme {
  FinanceTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 28, color: AppColors.midnightBlack),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24, color: AppColors.midnightBlack),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 20, color: AppColors.midnightBlack),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 18, color: AppColors.midnightBlack),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 16, color: AppColors.midnightBlack),
    bodySmall: const TextStyle()
        .copyWith(fontSize: 14, color: AppColors.midnightBlack),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12, color: AppColors.midnightBlack),
    labelMedium: const TextStyle()
        .copyWith(fontSize: 10, color: AppColors.midnightBlack),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge:
        const TextStyle().copyWith(fontSize: 28, color: AppColors.white),
    headlineMedium:
        const TextStyle().copyWith(fontSize: 24, color: AppColors.white),
    headlineSmall:
        const TextStyle().copyWith(fontSize: 20, color: AppColors.white),
    bodyLarge: const TextStyle().copyWith(fontSize: 18, color: AppColors.white),
    bodyMedium:
        const TextStyle().copyWith(fontSize: 16, color: AppColors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 14, color: AppColors.white),
    labelLarge:
        const TextStyle().copyWith(fontSize: 12, color: AppColors.white),
    labelMedium:
        const TextStyle().copyWith(fontSize: 10, color: AppColors.white),
  );
}
