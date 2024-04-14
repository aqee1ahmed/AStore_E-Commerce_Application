import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';

class AStoreAppFormDivider extends StatelessWidget {
  const AStoreAppFormDivider({
    super.key,
    required this.dividerText,
  });
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = AStoreAppHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
            color: dark
                ? AStoreAppColors.colorDarkGrey
                : AStoreAppColors.colorGrey,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
            color: dark
                ? AStoreAppColors.colorDarkGrey
                : AStoreAppColors.colorGrey,
          ),
        ),
      ],
    );
  }
}