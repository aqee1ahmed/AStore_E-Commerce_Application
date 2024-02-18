import 'package:flutter/material.dart';

class AStoreAppColors {
  AStoreAppColors._();

  ///app basic color
  static const Color primary = Color(0xFF4868FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  ///gradient color
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: <Color>[
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  ///text color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Color(0xFF6C757D);

  ///background color
  static const Color backgroundLight = Color(0xFFF6F6F6);
  static const Color backgroundDark = Color(0xFF272727);
  static const Color backgroundPrimary = Color(0xFFF3F5FF);

  ///background color container
  static const Color containerDark = Color(0xFFF6F6F6);
  static Color containerLight = Colors.white.withOpacity(0.1);

  ///button color
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //border color
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //error and validation color
  static const Color colorSuccess = Color(0xFF388E3C);
  static const Color colorInfo = Color(0xFF1976D2);
  static const Color colorWarning = Color(0xFFF57C00);
  static const Color colorError = Color(0xFFD32F2F);

  //neutral shades
  static const Color colorBlack = Color(0xFF232323);
  static const Color colorDarkerGrey = Color(0xFF4F4F4F);
  static const Color colorDarkGrey = Color(0xFF939393);
  static const Color colorGrey = Color(0xFFE0E0E0);
  static const Color colorSoftGrey = Color(0xFFF4F4F4);
  static const Color colorLightGrey = Color(0xFFF9F9F9);
  static const Color colorWhite = Color(0xFFFFFFFF);
}
