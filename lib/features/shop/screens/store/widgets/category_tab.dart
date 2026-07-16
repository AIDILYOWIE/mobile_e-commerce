import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      
      children: [
        Padding(
          padding: const EdgeInsetsGeometry.all(ESizes.defaultSpace),
          child: child,
        ),
      ],
    );
  }
}
