import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/screens.onboarding/widgets/onboarding_dot__navigation.dart';
import 'package:flutter_application/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:flutter_application/features/authentication/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/image_strings.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:flutter_application/utils/device/device_utility.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //horizontal pages
          PageView(
            children: const [
              OnBoardingPage(
                image: AStoreAppImageStrings.onBoarding1,
                title: AStoreAppTextStrings.onboardingTitle1,
                subTitle: AStoreAppTextStrings.onboardingSubtitle1,
              ),
              OnBoardingPage(
                image: AStoreAppImageStrings.onBoarding2,
                title: AStoreAppTextStrings.onboardingTitle2,
                subTitle: AStoreAppTextStrings.onboardingSubtitle2,
              ),
              OnBoardingPage(
                image: AStoreAppImageStrings.onBoarding3,
                title: AStoreAppTextStrings.onboardingTitle3,
                subTitle: AStoreAppTextStrings.onboardingSubtitle3,
              ),
            ],
          ),
          //skip button
          const OnBoardingSkip(),
          //dot navigation indicator
          const OnBoardingDotNavigation()
          //circular button
        ],
      ),
    );
  }
}


