import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/image_strings.dart';
import 'package:flutter_application/utils/constants/size.dart';

class AStoreAppSocialButtons extends StatelessWidget {
  const AStoreAppSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AStoreAppColors.colorGrey)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(
                  AStoreAppImageStrings.googleLogo,
                ),
                height: AStoreAppSize.iconSizeMedium,
                width: AStoreAppSize.iconSizeMedium,
              )),
        ),
        const SizedBox(
          width: AStoreAppSize.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AStoreAppColors.colorGrey)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(
                  AStoreAppImageStrings.facebookLogo,
                ),
                height: AStoreAppSize.iconSizeMedium,
                width: AStoreAppSize.iconSizeMedium,
              )),
        )
      ],
    );
  }
}


