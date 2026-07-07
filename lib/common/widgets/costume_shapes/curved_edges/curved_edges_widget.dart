import "package:flutter/material.dart";
import "package:mobile_ecommerce/common/widgets/costume_shapes/curved_edges/curved_edges.dart";

class ECurvedEdgeWidget extends StatelessWidget {
  const ECurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: ECustomCurvedEdges(
      
    ), child: child);
  }
}