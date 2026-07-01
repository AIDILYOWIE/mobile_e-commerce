
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/device/device_utility.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: const Icon(Iconsax.arrow_right_3_copy),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? EColors.primary : Colors.black),
      ),
    );
  }
}