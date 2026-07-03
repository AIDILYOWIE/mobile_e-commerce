
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/signup/signup.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwInputFields),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.message), labelText: ETexts.email),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: ETexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),
            // Remeber me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(ETexts.rememberMe),
                  ],
                ),

                TextButton(onPressed: () {}, child: const Text(ETexts.forgetPasswordTitle)),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields),

            // Sign button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text( ETexts.signIn ))),
            const SizedBox(height: ESizes.spaceBtwItems),

            // Create account
            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()) , child: const Text( ETexts.createAccount ))),
            const SizedBox(height: ESizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}