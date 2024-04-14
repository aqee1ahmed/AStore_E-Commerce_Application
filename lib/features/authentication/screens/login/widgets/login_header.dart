import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/image_strings.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';

class AStoreLoginHeader extends StatelessWidget {
  const AStoreLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
        final dark = AStoreAppHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //logo
        Image(
          image: AssetImage(dark
              ? AStoreAppImageStrings.appLogoDarkMode
              : AStoreAppImageStrings.appLogoLightMode),
          height: 150,
        ),
        //title
        Text(
          AStoreAppTextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        //spacing
        const SizedBox(height: AStoreAppSize.small),
        //subtitle
        Text(
          AStoreAppTextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
