import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:mobile_ecommerce/features/shop/screens/home/home.dart';
import 'package:mobile_ecommerce/features/shop/screens/store/store.dart';
import 'package:mobile_ecommerce/features/shop/screens/wishlist/wishlist.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          backgroundColor: darkMode ? EColors.black : EColors.white,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home_copy), 
              label: 'Home'),
            NavigationDestination(
              icon: Icon(Iconsax.shop_copy),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart_copy),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user_copy),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingScreen() ,
  ];
}
