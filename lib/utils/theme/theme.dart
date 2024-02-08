import 'package:flutter/material.dart';
import 'package:flutter_application/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_application/utils/theme/custom_themes/text_theme.dart';

class AStoreAppTheme {
  AStoreAppTheme._();

  ///light theme
  static ThemeData lighTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AStoreTextTheme.lightTextTheme,
    chipTheme: AStoreChipTheme.lightChipTheme,
    appBarTheme: AStoreAppBarTheme.lightAppBarTheme,
    checkboxTheme: AStoreCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AStoreBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AStoreElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AStoreOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: AStoreTextFieldTheme.lightInputDecorationTheme,
  );

  ///dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AStoreTextTheme.darkTextTheme,
    chipTheme: AStoreChipTheme.darkChipTheme,
    appBarTheme: AStoreAppBarTheme.darkAppBarTheme,
    checkboxTheme: AStoreCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AStoreBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AStoreElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AStoreOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: AStoreTextFieldTheme.darkInputDecorationTheme,
  );
}
