import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';


class EVerticalImageText extends StatelessWidget {
  const EVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = EColors.white ,
    this.backgroundColor = EColors.white,
    this.onTap
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          right: ESizes.spaceBtwItems,
        ),
        child: Column(
          children: [
            Container(
              width: 52,
              height: 52,
              padding: const EdgeInsets.all(ESizes.xs),
              decoration: BoxDecoration(
                color: backgroundColor ?? (EHelperFunctions.isDarkMode(context) ? EColors.black : EColors.white),
                borderRadius: BorderRadius.circular( 
                  100,
                ),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: EHelperFunctions.isDarkMode(context) ? EColors.white : EColors.dark,)
              ),
            ),
      
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
