import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/styles/shadows.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/common/widgets/icons/e_circular_icon.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_rounded_image.dart';
import 'package:mobile_ecommerce/common/widgets/texts/product_title.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          children: [
            ERoundedContainer(
              height: 160,
              padding: const EdgeInsets.all(ESizes.xs),
              backgroundColor: dark ? EColors.dark : EColors.white,
              child: Stack(
                children: [
                  const ERoundedImage(
                    ImageUrl: EImages.productShoes1,
                    applyImageRadius: true,
                    width: double.infinity,
                    height: double.infinity,
                  ),
      
                  //  Diskon
                  Positioned(
                    top: 6,
                    left: 6,
                    child: ERoundedContainer(
                      radius: ESizes.sm,
                      backgroundColor: EColors.secondary.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(horizontal: ESizes.sm, vertical: ESizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: EColors.black)),
                    ),
                  ),
      
                  // Like
                  Positioned(
                    top: 6,
                    right: 6,
                    child: ECircularIcon(icon: Iconsax.heart, color: EColors.error, width: 32, height: 32),
                  ),
                ],
              ),
            ),
      
            const SizedBox(height: ESizes.spaceBtwItems / 2),
      
            Padding(
              padding: EdgeInsets.only(left: ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EProductTitleText(title: 'Black Nike Shoes', smallSize: true),
                  const SizedBox(height: ESizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(height: ESizes.xs),
                      const Icon(Iconsax.verify, color: EColors.primary, size: ESizes.iconXs),
                    ],
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$40',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
      
                      Container(
                        decoration: const BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ESizes.cardRadiusMd),
                            bottomRight: Radius.circular(ESizes.cardRadiusMd),
                          ),
                        ),
                        child: const SizedBox(
                          width: ESizes.iconLg * 1.2,
                          height: ESizes.iconLg * 1.2,
                          child: Center(child: Icon(Icons.add, color: EColors.white)),
                        ),
                      ),
                    ],
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
