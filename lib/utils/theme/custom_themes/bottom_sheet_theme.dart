import 'package:flutter/material.dart';

class AStoreBottomSheetTheme {
  AStoreBottomSheetTheme._();

  ///custom bottom sheet light theme
  static const BottomSheetThemeData lightBottomSheetTheme =
      BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
  );

  ///custom bottom sheet dark theme
  static const BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
  );
}
