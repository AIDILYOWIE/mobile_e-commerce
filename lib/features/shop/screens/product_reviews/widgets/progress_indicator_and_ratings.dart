
import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/device/device_utility.dart';

class ERatingProgressIndicator extends StatelessWidget {
  const ERatingProgressIndicator({
    super.key,
    required this.text,
    required this.value
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Expanded(
              flex: 11,
              child: SizedBox(
                width:
                    EDeviceUtility.getScreenWidth(context) *
                    0.8,
                child: LinearProgressIndicator(
                  value: value,
                  minHeight: 11,
                  backgroundColor: EColors.grey,
                  borderRadius: BorderRadius.circular(7),
                  valueColor: const AlwaysStoppedAnimation(
                    EColors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
