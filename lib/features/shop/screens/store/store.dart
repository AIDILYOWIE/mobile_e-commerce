import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/search_container.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:mobile_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:mobile_ecommerce/common/widgets/products/cart/card_menu.dart';
import 'package:mobile_ecommerce/common/widgets/sections/section_heading.dart';
import 'package:mobile_ecommerce/common/widgets/texts/e_brand_title_witb_verified_icon.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/enums.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: EAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [ECartCounterIcon(onPresed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIconScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: EHelperFunctions.isDarkMode(context)
                  ? EColors.black
                  : EColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(ESizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: ESizes.spaceBtwItems),
                    ESearchContainer(
                      text: 'Search In Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems),

                    // Feature brands
                    ESectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: ESizes.spaceBtwItems / 1.5),

                    EGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 66,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ERoundedContainer(
                            padding: const EdgeInsets.all(ESizes.sm),
                            showBorder: true, 
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  child: ECircularImage(
                                    image: EImages.sportCategorie,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        EHelperFunctions.isDarkMode(context)
                                        ? EColors.white
                                        : EColors.black,
                                  ),
                                ),

                                const SizedBox(
                                  height: ESizes.spaceBtwItems / 2,
                                ),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      EBrandTItleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '200 products ceyla anggun grafiela',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
