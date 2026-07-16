import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/styles/spacing_styles.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPresed});

  final String image, title, subTitle;
  final VoidCallback onPresed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.padddingWithAppBarHeight,
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(image), width: EHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: ESizes.spaceBtwSections),

              // Title & subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ESizes.spaceBtwSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPresed,
                  child: const Text(ETexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
