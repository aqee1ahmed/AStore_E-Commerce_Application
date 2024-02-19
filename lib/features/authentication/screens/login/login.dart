import 'package:flutter/material.dart';
import 'package:flutter_application/commons/styles/spacing_style.dart';
import 'package:flutter_application/utils/constants/image_strings.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AStoreAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AstoreAppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title, subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //logo
                  Image(
                    image: AssetImage(dark
                        ? AStoreAppImageStrings.appLogoLightMode
                        : AStoreAppImageStrings.appLogoDarkMode),
                    height: 150,
                  ),
                  //title
                  Text(
                    AStoreAppTextStrings.homeAppBarTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  //spacing
                  const SizedBox(height: AStoreAppSize.small),
                  //subtitle
                  Text(
                    AStoreAppTextStrings.homeAppBarSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              //form
              Form(
                  child: Column(
                children: [
                  ///email
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: AStoreAppTextStrings.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  //spacing
                  const SizedBox(height: AStoreAppSize.spaceBtwInputField),
                  //password
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: AStoreAppTextStrings.password,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffix: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  //spacing
                  const SizedBox(height: AStoreAppSize.spaceBtwInputField / 2),

                  //remember me & forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //remember me
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const Text(AStoreAppTextStrings.rememberMe)
                        ],
                      ),
                      //forgot password
                      TextButton(
                        onPressed: () {},
                        child: const Text(AStoreAppTextStrings.forgetPassword),
                      )
                    ],
                  ),
                  //spacing
                  const SizedBox(height: AStoreAppSize.spaceBtwSections),
                  //signin button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(AStoreAppTextStrings.signIn),
                    ),
                  ),
                  //spacing

                  //create account button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        AStoreAppTextStrings.createAccount,
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
