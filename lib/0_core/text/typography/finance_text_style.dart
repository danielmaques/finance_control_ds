import 'finance_fonts.dart';

class FinanceTextStyle {
  final FinanceFontFamily fontFamily;
  final double fontSize;

  /// [fontWeight] should be included in the [fontFamily] weights list values.
  final double lineHeight;

  FinanceTextStyle({
    required this.fontFamily,
    required this.fontSize,
    required double lineHeightInPx,
  }) : lineHeight = lineHeightInPx / fontSize;
}
