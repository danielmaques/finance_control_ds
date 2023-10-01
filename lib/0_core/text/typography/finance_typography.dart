import 'package:finance_control_ui/0_core/text/typography/finance_fonts.dart';

import 'finance_font_weight.dart';
import 'finance_text_style.dart';

abstract class _FinanceTypography {
  const _FinanceTypography();

  FinanceFontFamily get moppins => FinanceFontFamilies.moppins;
  FinanceFontFamily get inter => FinanceFontFamilies.inter;

  FinanceFontWeight get bold => FinanceFontWeight.bold;
  FinanceFontWeight get medium => FinanceFontWeight.medium;
  FinanceFontWeight get regular => FinanceFontWeight.regular;
}

class FinanceTitleTypography extends _FinanceTypography {
  FinanceTextStyle get heading1 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 52,
        lineHeightInPx: 80,
      );

  FinanceTextStyle get heading2 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 38,
        lineHeightInPx: 64,
      );

  FinanceTextStyle get heading3 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 24,
        lineHeightInPx: 40,
      );

  FinanceTextStyle get heading4 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 20,
        lineHeightInPx: 32,
      );

  FinanceTextStyle get p18 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 18,
        lineHeightInPx: 20,
      );

  FinanceTextStyle get p16 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 16,
        lineHeightInPx: 20,
      );

  FinanceTextStyle get p14 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 14,
        lineHeightInPx: 20,
      );

  FinanceTextStyle get p12 => FinanceTextStyle(
        fontFamily: moppins,
        fontSize: 12,
        lineHeightInPx: 20,
      );
}
