
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/curved_edges/curved_edges_widget.dart';
import 'package:mobile_ecommerce/common/widgets/icons/e_circular_icon.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_rounded_image.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ECurvedEdgeWidget(
      child: Container(
        child: Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 450,
              child: Padding(
                padding: EdgeInsets.zero,
                child: Image(
                  image: AssetImage(EImages.productShoes1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
    
            Positioned(
              bottom: 30,
              right: 0,
              left: ESizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: ESizes.spaceBtwItems),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => ERoundedImage(
                    ImageUrl: EImages.productShoes1,
                    width: 80,
                    applyImageRadius: true,
                    fit: BoxFit.cover,
                    border: Border.all(color: EColors.darkGrey),
                  ),
                ),
              ),
            ),
            
            const EAppBar(
              showBackArrow: true,
              actions: [
                ECircularIcon(width: 40, height: 40, icon: Iconsax.heart, color: Colors.red,), 
                SizedBox(width: ESizes.spaceBtwItems / 2,),
                ECircularIcon(width: 40, height: 40, icon: Iconsax.export_2_copy,), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}
