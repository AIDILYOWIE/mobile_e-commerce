import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/products/ratins/rating_indicator.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:mobile_ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EProductReview extends StatelessWidget {
  const EProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const EAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use.',
              ),
              const SizedBox(height: ESizes.spaceBtwItems),

              // Overall product ratings
              EOverallProductRating(),
              ERattingBarIndicator(rating: 3.8,),
              Text("22,0222", style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: ESizes.spaceBtwSections,),

              const EUserReviewRating(),
              const EUserReviewRating(),
              const EUserReviewRating(),
              const EUserReviewRating(),

            ],
          ),
        ),
      ),
    );
  }
}


