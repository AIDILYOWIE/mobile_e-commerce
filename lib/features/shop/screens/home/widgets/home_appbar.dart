import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/products/cart/card_menu.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/text_strings.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ETexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: EColors.grey ) ,),
          Text('Ceyla Anggun ', style: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white ) ,),
        ],
      ),
      actions: [
        ECartCounterIcon(iconColor: EColors.white, onPresed: (){},)
      ],
    );
  }
}