import 'package:flutter/widgets.dart';
import 'package:flutter_application/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///variable to hold the current page index
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///change the current page index while swiping
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  ///jump to specific page
  void dotNavigationClicked(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  ///update the current page index and jump to the page
  void nextButtonScreen() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LogInScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///update the current page index and jump to the last page
  void skipButtonClicked() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
