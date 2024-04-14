import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/screens/signup/signup.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AStoreLoginForm extends StatelessWidget {
  const AStoreLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(
                  AStoreAppTextStrings.createAccount,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}