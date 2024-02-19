import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/device/device_utility.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AStoreAppHelperFunctions.isDarkMode(context);

    return Positioned(
      right: AStoreAppSize.defaultSpacing,
      bottom: AStoreDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextButtonScreen();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AStoreAppColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
