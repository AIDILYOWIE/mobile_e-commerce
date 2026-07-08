
import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/device/device_utility.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';


class ESearchContainer extends StatelessWidget {
  const ESearchContainer({
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    super.key,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
      child: Container(
        width: EDeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                    ? EColors.dark
                    : EColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
          border: showBorder ? Border.all(color: EColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: EColors.darkerGrey),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
