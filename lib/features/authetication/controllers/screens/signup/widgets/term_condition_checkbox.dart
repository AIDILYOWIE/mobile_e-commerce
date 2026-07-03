import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class terms_condition_checkbox extends StatelessWidget {
  const terms_condition_checkbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(height: ESizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '${ETexts.iAgreeTo}', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${ETexts.privacyPolicy}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? EColors.white : EColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? EColors.white : EColors.primary,
                ),
              ),
              TextSpan(text: '${ETexts.and}', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${ETexts.termsOfUse}',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? EColors.white : EColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? EColors.white : EColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}