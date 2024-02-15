import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/screens.onboarding/onboarding.dart';
import 'package:flutter_application/utils/theme/theme.dart';
import 'package:get/get.dart';

///class to setup theme, animation, and other configurations
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AStoreAppTheme.lighTheme,
      darkTheme: AStoreAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
