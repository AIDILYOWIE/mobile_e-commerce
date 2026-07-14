import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class ECircularIcon extends StatelessWidget {
  const ECircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = ESizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPresed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPresed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (dark
            ? EColors.dark.withOpacity(0.9)
            : EColors.white.withOpacity(0.9)),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPresed,
          padding: EdgeInsets.zero,
          icon: Icon(icon, color: color, size: size),
        ),
      ),
    );
  }
}
