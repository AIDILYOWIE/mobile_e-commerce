import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/signup/email_verification.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/signup/widgets/term_condition_checkbox.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class signup_form extends StatelessWidget {
  const signup_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          // Frist & Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: ESizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: ETexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: ETexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Phone
          TextFormField(
            expands: false,
            decoration: const InputDecoration(labelText: ETexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          // Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: ETexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: ESizes.spaceBtwInputFields),

          //  Terms & condition checkbox
          terms_condition_checkbox(),

          const SizedBox(height: ESizes.spaceBtwSections),
          // Signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () =>  Get.to(() => const EmailVerification() ), child: const Text(ETexts.createAccount)),
          ),

          const SizedBox(height: ESizes.spaceBtwSections),
          // Divider
          EFormDivider(dark: dark, title: ETexts.orSignUpWith.capitalize!),
        ],
      ),
    );
  }
}
