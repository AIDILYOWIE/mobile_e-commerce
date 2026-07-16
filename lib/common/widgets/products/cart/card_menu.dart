import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPresed,
  });

  final Color? iconColor;
  final VoidCallback onPresed;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: (){}, icon:  Icon(Iconsax.shopping_bag_copy, color: (iconColor != null) ? iconColor : (dark ? EColors.white : EColors.black) ,)),
        Positioned(
          right: 6,
          top: 3,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: dark ? EColors.white : EColors.dark,
              borderRadius: BorderRadius.circular(100)
            ),
            child:  Center(child: Text('1', style: Theme.of(context).textTheme.labelLarge!.apply(color: dark ? EColors.dark : EColors.white, fontSizeFactor: 0.8) ,)),
          ),
        )
      ],
    );
  }
}
