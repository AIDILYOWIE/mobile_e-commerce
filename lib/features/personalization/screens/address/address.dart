import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:mobile_ecommerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(const AddNewAddress()),
        child: const Icon(Iconsax.add_copy, color: EColors.white),
        backgroundColor: EColors.primary,
      ),
      appBar: EAppBar(title: Text('Address'), showBackArrow: true,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            ESingleAddress(selectedAddress: true),
            ESingleAddress(selectedAddress: false),
          ],
        ),
      ),
      
    );
  }
}
