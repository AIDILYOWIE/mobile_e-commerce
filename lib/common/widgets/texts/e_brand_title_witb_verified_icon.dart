import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/texts/e_brand_title_text.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/enums.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EBrandTItleWithVerifiedIcon extends StatelessWidget {
  const EBrandTItleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.textAlign,
    this.iconColor = EColors.primary,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor ;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EBrandTitle(
          title: title,
          textColor: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize
        ),
        const SizedBox(height: ESizes.xs),
        const Icon(
          Iconsax.verify ,
          color: EColors.primary ,
          size: ESizes.iconXs,
        ),
      ],
    );
  }
} 