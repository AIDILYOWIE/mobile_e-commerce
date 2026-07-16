import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/styles/spacing_styles.dart';
import 'package:mobile_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/login/widgets/login_form.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/login/widgets/login_header.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.padddingWithAppBarHeight,
          child: Column(
            children: [
              // Header
              EloginHeader(dark: dark),

              const SizedBox(height: ESizes.spaceBtwSections,),

              // Form
              ELoginForm(),

              // Devider
              EFormDivider(dark: dark, title: ETexts.orSignInWith ,)
            ],
          ),
        ),
      ),
    );
  }
}




