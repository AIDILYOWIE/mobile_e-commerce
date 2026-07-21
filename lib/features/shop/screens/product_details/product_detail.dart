import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/sections/section_heading.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_details/widgets/price_rating_widget.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product image
            EProductImageSlider(),

            // Product detail
            Padding(
              padding: EdgeInsets.only(
                right: ESizes.defaultSpace,
                left: ESizes.defaultSpace,
                bottom: ESizes.defaultSpace,
              ),
              child: Column(
                children: [
                  EPriceAndRating(),
                  const SizedBox(height: ESizes.spaceBtwItems / 1.5,),
                  EProductMetaData(),
                  const SizedBox(height: ESizes.spaceBtwItems / 1.5,),
                  EProductAttributes(),
                  const SizedBox(height: ESizes.spaceBtwSections,),

                  // Description
                  const ESectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  ReadMoreText('You can always count on a classic. The Dunk Low pairs embossed suede with textiles for game-changing comfort that lasts. The possibilities are endless—how will you wear your Dunks?',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  
                  // Reviews
                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwItems ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ESectionHeading(title: 'Reviews (2202)', showActionButton: false,),
                      IconButton(onPressed: () => Get.to(const EProductReview() ) , icon: Icon(Iconsax.arrow_right_3_copy))
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: EBottomAddToCart(),
    );
  }
}

