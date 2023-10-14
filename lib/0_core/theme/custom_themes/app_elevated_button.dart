import 'package:finance_control_ui/finance_control_ui.dart';
import 'package:flutter/material.dart';

class AppElevatedButton {
  AppElevatedButton._();

  static ElevatedButtonThemeData lightTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.deepBlue),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      )),
      textStyle: MaterialStateProperty.all(const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      )),
    ),
  );

  static ElevatedButtonThemeData darkTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.deepBlue),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      )),
      textStyle: MaterialStateProperty.all(const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      )),
    ),
  );
}
