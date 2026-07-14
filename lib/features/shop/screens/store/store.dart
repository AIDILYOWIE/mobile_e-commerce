import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/tapbar.dart';
import 'package:mobile_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:mobile_ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/search_container.dart';
import 'package:mobile_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:mobile_ecommerce/common/widgets/products/cart/card_menu.dart';
import 'package:mobile_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:mobile_ecommerce/common/widgets/sections/section_heading.dart';
import 'package:mobile_ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
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
                      ESectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: ESizes.spaceBtwItems / 1.5),

                      EGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 66,
                        itemBuilder: (_, index) {
                          return EBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                bottom: ETabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            
            children: [
              ECategoryTab(
                
                child: Column(
                  children: [
                    // Brands
                    EBrandShowcase(
                      images: [
                        EImages.productJacket1,
                        EImages.productShoes1,
                        EImages.productLegging1,
                      ],
                    ),
                    const SizedBox(height: ESizes.spaceBtwItems ,),

                    ESectionHeading(title: "You might like", onPressed: (){},),
                    const SizedBox(height: ESizes.spaceBtwItems ,),

                    EGridLayout(itemCount: 4, itemBuilder: (_, index) => EProductCardVertical()),
                    const SizedBox(height: ESizes.spaceBtwSections ,),
                  ],
                ),
              ),
              ECategoryTab(
                child: Column(
                  children: [
                    EBrandShowcase(
                      images: [
                        EImages.productJacket1,
                        EImages.productShoes1,
                        EImages.productLegging1,
                      ],
                    ),
                  ],
                ),
              ),
              ECategoryTab(
                child: Column(
                  children: [
                    EBrandShowcase(
                      images: [
                        EImages.productJacket1,
                        EImages.productShoes1,
                        EImages.productLegging1,
                      ],
                    ),
                  ],
                ),
              ),
              ECategoryTab(
                child: Column(
                  children: [
                    EBrandShowcase(
                      images: [
                        EImages.productJacket1,
                        EImages.productShoes1,
                        EImages.productLegging1,
                      ],
                    ),
                  ],
                ),
              ),
              ECategoryTab(
                child: Column(
                  children: [
                    EBrandShowcase(
                      images: [
                        EImages.productJacket1,
                        EImages.productShoes1,
                        EImages.productLegging1,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
