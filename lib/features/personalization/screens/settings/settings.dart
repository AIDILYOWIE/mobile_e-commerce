import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/primary_header_containers.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:mobile_ecommerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:mobile_ecommerce/common/widgets/list_tile/user_profile_tile.dart';
import 'package:mobile_ecommerce/common/widgets/sections/section_heading.dart';
import 'package:mobile_ecommerce/features/personalization/screens/address/address.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  EAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: EColors.white),
                    ),
                  ),

                  // User profile
                  const EUserProfileTile(
                    image: EImages.user1,
                    title: "Ceyla Anggun",
                    subTitle: "ceylaAnggun@gmail.com",
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  ESectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  SizedBox(height: ESizes.spaceBtwItems),

                  ESettingsMenuTile(
                    icon: Iconsax.safe_home_copy,
                    title: "My Address",
                    subTitle: "Set shooping delivery address",
                    onTap: () => Get.to(const AddressScreen()),
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.shopping_cart_copy,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.bag_tick_copy,
                    title: "My Orders",
                    subTitle: "In-progress and completed orders",
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.bank_copy,
                    title: "Banck Account",
                    subTitle: "Whitdraw balance to registred bank account",
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.discount_shape_copy,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.notification_1_copy,
                    title: "Notifications",
                    subTitle: "Set any kind notifcations message",
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.security_card_copy,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                  ),

                  // App settings
                  SizedBox(height: ESizes.spaceBtwSections),
                  ESectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  SizedBox(height: ESizes.spaceBtwItems),
                  ESettingsMenuTile(
                    icon: Iconsax.document_upload_copy,
                    title: "Load Data",
                    subTitle: "Upload Data to your Cloud Firebase",
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.location_copy,
                    title: "Geolocation",
                    subTitle: "set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.security_user_copy,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.image_copy,
                    title: "HD Image Quality",
                    subTitle: "set image quality to be seen",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
