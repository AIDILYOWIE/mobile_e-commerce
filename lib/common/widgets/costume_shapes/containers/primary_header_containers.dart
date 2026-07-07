import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/circular_container.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/curved_edges/curved_edges_widget.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';

class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({
    super.key,
    required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurvedEdgeWidget(
      child: Container(
        color: EColors.primary,
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}

