import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:mobile_ecommerce/common/widgets/sections/section_heading.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EProductAttributes extends StatelessWidget {
  const EProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        // Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ESectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (Value) {},
                ),
                EChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (Value) {},
                ),
                EChoiceChip(
                  text: 'Black',
                  selected: true,
                  onSelected: (Value) {},
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ESectionHeading(title: 'Sizes', showActionButton: false),
            SizedBox(height: ESizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                EChoiceChip(text: '36', selected: true, onSelected: (value) {}),
                EChoiceChip(
                  text: '37',
                  selected: false,
                  onSelected: (value) {},
                ),
                EChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
