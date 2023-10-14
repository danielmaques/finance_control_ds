import 'package:flutter/material.dart';

import '../../finance_control_ui.dart';

class FinanceText extends StatelessWidget {
  final String text;
  final bool underline;
  final Color? color;
  final TextAlign? textAlign;
  final TextStyle? style;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final bool isDarkStyle;

  FinanceText.h1(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.headlineLarge
            : FinanceTextTheme.lightTextTheme.headlineLarge;

  FinanceText.h2(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.headlineMedium
            : FinanceTextTheme.lightTextTheme.headlineMedium;

  FinanceText.h3(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.headlineSmall
            : FinanceTextTheme.lightTextTheme.headlineSmall;

  FinanceText.b18(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.bodyLarge
            : FinanceTextTheme.lightTextTheme.bodyLarge;

  FinanceText.b16(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.bodyMedium
            : FinanceTextTheme.lightTextTheme.bodyMedium;

  FinanceText.b14(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.bodySmall
            : FinanceTextTheme.lightTextTheme.bodySmall;

  FinanceText.l12(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.labelLarge
            : FinanceTextTheme.lightTextTheme.labelLarge;

  FinanceText.l10(
    this.text, {
    super.key,
    this.underline = false,
    this.color,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
    this.fontWeight,
    this.isDarkStyle = false,
  }) : style = isDarkStyle
            ? FinanceTextTheme.darkTextTheme.labelMedium
            : FinanceTextTheme.lightTextTheme.labelMedium;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}
