import 'package:flutter/material.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AStoreAppSize.defaultSpacing),
      child: Column(
        children: [
          Image(
            height: AStoreAppHelperFunctions.screenHeight() * 0.8,
            width: AStoreAppHelperFunctions.screenWidth() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AStoreAppSize.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
