import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:mobile_ecommerce/common/widgets/texts/e_brand_title_witb_verified_icon.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/enums.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ERoundedContainer(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBorder,
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
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  EBrandTItleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '200 products',
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
  }
}
