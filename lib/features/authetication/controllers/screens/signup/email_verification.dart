import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ecommerce/common/widgets/success/success_screen.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/login/login.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: Icon(CupertinoIcons.clear))],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(ESizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(image: const AssetImage(EImages.onBoardingImage2), width: EHelperFunctions.screenWidth() * 0.6),
            const SizedBox(height: ESizes.spaceBtwSections),

            // Title & subtitle

            Text(ETexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: ESizes.spaceBtwItems,),
            Text('ceyla@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: ESizes.spaceBtwItems,),
            Text(ETexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: ESizes.spaceBtwItems,),

            // Buttons
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() =>  SuccessScreen( image: EImages.onBoardingImage2, title: ETexts.yourAccountCreatedTitle, subTitle: ETexts.yourAccountCreatedSubTitle, onPresed: () => Get.to(() => const LoginScreen()), )), child: const Text(ETexts.tContinue)),),
            const SizedBox(height: ESizes.spaceBtwItems,),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(ETexts.resendEmail)),),
          ],
        ),
      ),
    );
  }
}
