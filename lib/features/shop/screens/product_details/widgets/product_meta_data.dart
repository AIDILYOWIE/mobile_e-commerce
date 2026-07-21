import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:mobile_ecommerce/common/widgets/texts/e_brand_title_witb_verified_icon.dart';
import 'package:mobile_ecommerce/common/widgets/texts/product_title.dart';
import 'package:mobile_ecommerce/utils/constants/enums.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        const EProductTitleText(title: 'Black Nike'),
        const SizedBox(height: ESizes.spaceBtwItems / 1.5),

        Row(
          children: [
            const EProductTitleText(title: 'Stock:'),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems / 1.5),

        Row(
          children: [
            ECircularImage(image: EImages.nikeBrand, width: 42, height: 43, fit: BoxFit.cover,),
            EBrandTItleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,)
          ],
        )
      ],
    );
  }
}
