import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';

class AStoreAppTermAndCondition extends StatelessWidget {
  const AStoreAppTermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AStoreAppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: AStoreAppSize.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "${AStoreAppTextStrings.iAgreeTo} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AStoreAppTextStrings.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? Colors.white : AStoreAppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? Colors.white : AStoreAppColors.primary,
                    ),
              ),
              TextSpan(
                text: " ${AStoreAppTextStrings.and} ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: AStoreAppTextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? Colors.white : AStoreAppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? Colors.white : AStoreAppColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
