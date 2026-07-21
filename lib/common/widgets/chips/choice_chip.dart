import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/circular_container.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class EChoiceChip extends StatelessWidget {
  const EChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final isColor = EHelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      onSelected: onSelected,
      selected: selected,
      labelStyle: TextStyle(color: selected ? EColors.white : null),
      avatar: isColor ? ECircularContainer(width: 50, height: 50, backgroundColor: EHelperFunctions.getColor(text)!,) : null,
      shape: isColor ? const CircleBorder() : null,
      labelPadding: isColor ? EdgeInsets.all(0) : null,
      padding: isColor ? EdgeInsets.all(0) : null,
      backgroundColor: isColor ? EHelperFunctions.getColor(text)! : null ,
    );
  }
}
