import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class ERoundedImage extends StatelessWidget {
  const ERoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = false,
    required this.ImageUrl,
    this.fit = BoxFit.cover,
    this.backgroundColor = EColors.light,
    this.isNetworkImage = false,
    this.borderRadius = ESizes.md
  });

  final double? width, height;
  final String ImageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(ESizes.md),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,

          child: Image(fit: fit, image: isNetworkImage ? NetworkImage(ImageUrl) : AssetImage(ImageUrl) as ImageProvider),
        ),
      ),
    );
  }
}
