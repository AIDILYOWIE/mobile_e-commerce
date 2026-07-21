import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/rounded_container.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class ESingleAddress extends StatelessWidget {
  const ESingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ERoundedContainer(
      padding: const EdgeInsets.all(ESizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? EColors.darkGrey.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? EColors.darkerGrey
          : EColors.grey,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress
                  ? dark
                        ? EColors.light
                        : EColors.dark
                  : null,
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Ceyla Anggun", maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: ESizes.spaceBtwItems / 2,),
              Text("+62 851-8311-7165", maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: ESizes.spaceBtwItems / 2,),
              Text("3212 Ponorogo, Dkh kledang, Desa ronosetanan, kecamatan siman", softWrap: true,),

            ],
          )
        ],
      ),
    );
  }
}
