import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';

class ERattingBarIndicator extends StatelessWidget {
  const ERattingBarIndicator({
    super.key,
    required this.rating
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(rating: rating, itemSize: 20, unratedColor: EColors.grey, itemBuilder: (_, __) => const Icon(Iconsax.star_copy, color: EColors.primary,));
  }
}