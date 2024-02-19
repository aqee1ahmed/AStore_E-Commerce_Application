import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/size.dart';

class AStoreElevatedButtonTheme {
  AStoreElevatedButtonTheme._();

  ///custom elevated button theme for light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AStoreAppColors.backgroundLight,
      backgroundColor: AStoreAppColors.primary,
      disabledForegroundColor: AStoreAppColors.colorDarkGrey,
      disabledBackgroundColor: AStoreAppColors.buttonDisabled,
      side: const BorderSide(color: AStoreAppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: AStoreAppSize.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AStoreAppColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AStoreAppSize.buttonRadius)),
    ),
  );

  ///custom elevated button theme for dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AStoreAppColors.backgroundLight,
      backgroundColor: AStoreAppColors.primary,
      disabledForegroundColor: AStoreAppColors.colorDarkGrey,
      disabledBackgroundColor: AStoreAppColors.colorDarkerGrey,
      side: const BorderSide(color: AStoreAppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: AStoreAppSize.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AStoreAppColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AStoreAppSize.buttonRadius)),
    ),
  );
}
