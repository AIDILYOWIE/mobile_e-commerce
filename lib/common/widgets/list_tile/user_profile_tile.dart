import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image
  });

  final String title, subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ECircularImage(
        fit: BoxFit.cover,
        image: image,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: EColors.white),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: EColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit_copy, color: EColors.white),
      ),
    );
  }
}
