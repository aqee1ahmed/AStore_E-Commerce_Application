import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/size.dart';

class AstoreAppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: AStoreAppSize.appBarHeight,
    left: AStoreAppSize.defaultSpacing,
    bottom: AStoreAppSize.defaultSpacing,
    right: AStoreAppSize.defaultSpacing,
  );
}
