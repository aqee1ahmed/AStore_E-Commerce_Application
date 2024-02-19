import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/size.dart';

class AStoreOutlineButtonTheme {
  AStoreOutlineButtonTheme._();

  ///light outline button theme
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AStoreAppColors.backgroundDark,
      side: const BorderSide(color: AStoreAppColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AStoreAppColors.colorBlack,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: AStoreAppSize.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AStoreAppSize.buttonRadius)),
    ),
  );

  ///dark outline button theme
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AStoreAppColors.backgroundLight,
      side: const BorderSide(color: AStoreAppColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AStoreAppColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: AStoreAppSize.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AStoreAppSize.buttonRadius)),
    ),
  );
}
