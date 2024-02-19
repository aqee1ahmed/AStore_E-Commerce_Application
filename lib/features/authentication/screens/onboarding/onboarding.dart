import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_application/features/authentication/screens/onboarding/widgets/onboarding_dot__navigation.dart';
import 'package:flutter_application/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:flutter_application/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_application/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_application/utils/constants/image_strings.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal pages
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.updatePageIndicator(index);
            },
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
          const OnBoardingDotNavigation(),
          //circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
