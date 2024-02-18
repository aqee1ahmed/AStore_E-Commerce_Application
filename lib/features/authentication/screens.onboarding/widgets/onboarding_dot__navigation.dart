import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/device/device_utility.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AStoreAppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: AStoreDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AStoreAppSize.defaultSpacing,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: dark
              ? AStoreAppColors.backgroundLight
              : AStoreAppColors.backgroundDark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
