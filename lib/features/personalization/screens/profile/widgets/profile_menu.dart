import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EProfileMenu extends StatelessWidget {
  const EProfileMenu({super.key, this.icon = Iconsax.arrow_right_3_copy , required this.onPressed, required this.title, required this.value });

  @override
  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;
  

  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: ESizes.spaceBtwItems / 1.5,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(child: Icon(icon, size: 18)),
          ],
        ),
      ),
    );
  }
}
