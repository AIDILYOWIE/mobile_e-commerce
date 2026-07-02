import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';

class EFormDivider extends StatelessWidget {
  const EFormDivider({
    super.key,
    required this.dark,
    required this.title
  });

  final bool dark;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? EColors.darkerGrey : EColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(title.capitalize!, style: Theme.of(context).textTheme.labelMedium ),
        Flexible(child: Divider(color: dark ? EColors.darkerGrey : EColors.grey, thickness: 0.5, indent: 5, endIndent: 60))

      ],
    );
  }
}