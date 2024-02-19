import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AStoreDeviceUtils.getAppBarHeight(),
      right: AStoreAppSize.defaultSpacing,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipButtonClicked();
        },
        child: const Text('Skip'),
      ),
    );
  }
}
