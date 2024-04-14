import 'package:flutter/material.dart';
import 'package:flutter_application/commons/widgets/login_signup/form_divider.dart';
import 'package:flutter_application/commons/widgets/login_signup/social_buttons.dart';
import 'package:flutter_application/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AStoreAppSize.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                AStoreAppTextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AStoreAppSize.spaceBtwSections,
              ),
              //form
              const AStoreAppSignupForm(),

              const SizedBox(
                height: AStoreAppSize.spaceBtwSections,
              ),
              //divider
              AStoreAppFormDivider(
                dividerText: AStoreAppTextStrings.orSignUpWith.capitalize!,
              ),
              const SizedBox(
                height: AStoreAppSize.spaceBtwSections,
              ),
              //social buttons
              const AStoreAppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
