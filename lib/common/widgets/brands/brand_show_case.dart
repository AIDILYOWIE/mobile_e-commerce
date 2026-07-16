import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/brands/brand_card.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_rounded_image.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(ESizes.md),
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand
          const EBrandCard(showBorder: false),

          // Products brand
          Row(
            children: images.map((image) {
              debugPrint(image);
              return brandTopProductImage(image, context);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, context) {
    return Expanded(
      child: ERoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: ESizes.sm),
        child: ERoundedImage(
          width: double.infinity,
          height: double.infinity,
          ImageUrl: image,
          applyImageRadius: true,
        ),
      ),
    );
  }
}
