import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/common/widgets/texts/product_price.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EPriceAndRating extends StatelessWidget {
  const EPriceAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EProductPrice(
              currencySign: 'Rp',
              price: "2.000.000",
              isLarge: true,
            ),
            Row(
              children: [
                Text(
                  'Rp2.300.000',
                  style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(width: ESizes.spaceBtwItems / 2),
                Text(
                  '25%',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge!.apply(color: EColors.black),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Iconsax.star, color: Colors.amber, size: 24),
            const SizedBox(width: ESizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(text: '(199)'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
