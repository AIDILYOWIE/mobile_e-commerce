import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/app.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/password_configuration/reset_password.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: EdgeInsetsGeometry.all( ESizes.defaultSpace ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings
              Text( ETexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium , ),
              const SizedBox(height: ESizes.spaceBtwItems,),
              Text( ETexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium , ),
              const SizedBox(height: ESizes.spaceBtwSections * 2,),

              // Text Field
              TextFormField(
                decoration: const InputDecoration(labelText: ETexts.email, prefixIcon: Icon( Iconsax.direct_right ) ),
              ),
              const SizedBox(height: ESizes.spaceBtwSections,),

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()), child: const Text(ETexts.submit)),)
            ],
          ),
      ),
    );
  }
}