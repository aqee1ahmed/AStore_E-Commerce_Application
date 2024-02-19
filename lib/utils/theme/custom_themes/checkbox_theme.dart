import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/size.dart';

class AStoreCheckboxTheme {
  AStoreCheckboxTheme._();

  ///custom checkbox light theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AStoreAppSize.extraSmall),
      ),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AStoreAppColors.colorWhite;
        }
        return AStoreAppColors.colorBlack;
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AStoreAppColors.primary;
        }
        return Colors.transparent;
      }));

  ///custom checkbox dark theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AStoreAppSize.extraSmall),
      ),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AStoreAppColors.colorWhite;
        }
        return AStoreAppColors.colorBlack;
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AStoreAppColors.primary;
        }
        return Colors.transparent;
      }));
}
