import 'package:flutter/material.dart';
import 'package:flutter_application/commons/styles/spacing_style.dart';
import 'package:flutter_application/commons/widgets/login_signup/form_divider.dart';
import 'package:flutter_application/commons/widgets/login_signup/social_buttons.dart';
import 'package:flutter_application/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_application/features/authentication/screens/login/widgets/login_header.dart';

import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AstoreAppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo, title, subtitle
              const AStoreLoginHeader(),

              ///form
              const AStoreLoginForm(),

              ///divider
              AStoreAppFormDivider(
                dividerText: AStoreAppTextStrings.orSignInWith.capitalize!,
              ),
              //spacing
              const SizedBox(
                height: AStoreAppSize.spaceBtwSections,
              ),
              //footer
              const AStoreAppSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

