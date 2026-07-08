import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/primary_header_containers.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/search_container.dart';
import 'package:mobile_ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:mobile_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:mobile_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  EHomeAppBar(),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  // Search Bar
                  ESearchContainer(
                    text: 'Search in store',
                    icon: Iconsax.search_normal_copy,
                    showBorder: true,
                    showBackground: true,
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ESizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Header
                        ECategorieHeader(
                          title: "Popular Categoris",
                          showActionButton: false,
                          textColor: EColors.white,
                        ),
                        const SizedBox(height: ESizes.spaceBtwItems),

                        // Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return  EVerticalImageText(image: EImages.sportCategorie, title: 'sport', textColor: EColors.white, backgroundColor: EColors.white, onTap: (){},);
                            },
                          ),
                        ),
                      ],
                    ),
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

