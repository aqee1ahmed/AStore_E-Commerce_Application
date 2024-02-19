import 'package:flutter/material.dart';
import 'package:flutter_application/commons/styles/spacing_style.dart';
import 'package:flutter_application/utils/constants/colors.dart';
import 'package:flutter_application/utils/constants/image_strings.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:flutter_application/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AStoreAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AstoreAppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///logo, title, subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //logo
                  Image(
                    image: AssetImage(dark
                        ? AStoreAppImageStrings.appLogoDarkMode
                        : AStoreAppImageStrings.appLogoLightMode),
                    height: 150,
                  ),
                  //title
                  Text(
                    AStoreAppTextStrings.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  //spacing
                  const SizedBox(height: AStoreAppSize.small),
                  //subtitle
                  Text(
                    AStoreAppTextStrings.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),

              ///form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AStoreAppSize.spaceBtwSections),
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
                      const SizedBox(
                          height: AStoreAppSize.spaceBtwInputField / 2),

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
                            child:
                                const Text(AStoreAppTextStrings.forgetPassword),
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
                      const SizedBox(height: AStoreAppSize.spaceBtwItems),
                      //create account button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            AStoreAppTextStrings.createAccount,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                      color: dark
                          ? AStoreAppColors.colorDarkGrey
                          : AStoreAppColors.colorGrey,
                    ),
                  ),
                  Text(
                    AStoreAppTextStrings.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                      color: dark
                          ? AStoreAppColors.colorDarkGrey
                          : AStoreAppColors.colorGrey,
                    ),
                  ),
                ],
              ),
              //spacing
              const SizedBox(
                height: AStoreAppSize.spaceBtwSections,
              ),
              //footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AStoreAppColors.colorGrey)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(
                            AStoreAppImageStrings.googleLogo,
                          ),
                          height: AStoreAppSize.iconSizeMedium,
                          width: AStoreAppSize.iconSizeMedium,
                        )),
                  ),
                  const SizedBox(
                    width: AStoreAppSize.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AStoreAppColors.colorGrey)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(
                            AStoreAppImageStrings.facebookLogo,
                          ),
                          height: AStoreAppSize.iconSizeMedium,
                          width: AStoreAppSize.iconSizeMedium,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
