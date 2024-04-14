import 'package:flutter/material.dart';
import 'package:flutter_application/features/authentication/screens/signup/widgets/term_and_condition_checkbox.dart';
import 'package:flutter_application/utils/constants/size.dart';
import 'package:flutter_application/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';


class AStoreAppSignupForm extends StatelessWidget {
  const AStoreAppSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          //name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: AStoreAppTextStrings.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: AStoreAppSize.spaceBtwInputField,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: AStoreAppTextStrings.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AStoreAppSize.spaceBtwInputField,
          ),
          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: AStoreAppTextStrings.username,
                prefixIcon: Icon(Iconsax.user)),
          ),
          const SizedBox(
            height: AStoreAppSize.spaceBtwInputField,
          ),
          //email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: AStoreAppTextStrings.email,
                prefixIcon: Icon(Iconsax.user)),
          ),

          const SizedBox(
            height: AStoreAppSize.spaceBtwInputField,
          ),
          //phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: AStoreAppTextStrings.phoneNo,
                prefixIcon: Icon(Iconsax.user)),
          ),

          const SizedBox(
            height: AStoreAppSize.spaceBtwInputField,
          ),
          //password
          TextFormField(
            decoration: const InputDecoration(
              labelText: AStoreAppTextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffix: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: AStoreAppSize.spaceBtwSections,
          ),
          //terms and conditions checkbox
          const AStoreAppTermAndCondition(),
          const SizedBox(
            height: AStoreAppSize.spaceBtwSections,
          ),

          //sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AStoreAppTextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

