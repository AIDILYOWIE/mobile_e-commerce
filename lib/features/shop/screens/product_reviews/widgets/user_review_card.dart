import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/common/widgets/products/ratins/rating_indicator.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class EUserReviewRating extends StatelessWidget {
  const EUserReviewRating({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(EImages.user1)),
                const SizedBox(width: ESizes.spaceBtwItems),
                Text(
                  "Ceyla Anggun",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),

            IconButton(onPressed: () {}, icon: Icon(Iconsax.more_copy)),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        Row(
          children: [
            const ERattingBarIndicator(rating: 4),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text("01 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        const ReadMoreText(
          "I’ve been using this for about a week, and it completely exceeded my expectations! The build quality is solid, and the battery life easily lasts a full day of heavy use. Setup was very straightforward. Highly recommend this to anyone looking for great value for money.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show More',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: EColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: EColors.primary,
          ),
        ),
        const SizedBox(height: ESizes.spaceBtwItems),

        // Company review
        ERoundedContainer(
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ESizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Yojes Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov, 2026",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: ESizes.spaceBtwItems),

                const ReadMoreText(
                  "I’ve been using this for about a week, and it completely exceeded my expectations! The build quality is solid, and the battery life easily lasts a full day of heavy use. Setup was very straightforward. Highly recommend this to anyone looking for great value for money.",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show Less',
                  trimCollapsedText: 'Show More',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: EColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: EColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: ESizes.spaceBtwSections),
      ],
    );
  }
}
