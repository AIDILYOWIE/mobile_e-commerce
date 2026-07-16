import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/icons/e_circular_icon.dart';
import 'package:mobile_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:mobile_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:mobile_ecommerce/features/shop/screens/home/home.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [ECircularIcon(icon: Iconsax.add_copy, onPresed: () {}, backgroundColor: Colors.transparent,)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [EGridLayout(itemCount: 4, itemBuilder: (_, index) => const EProductCardVertical())],
        ),
      ),
    );
  }
}
