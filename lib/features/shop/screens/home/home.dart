import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/circular_container.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/primary_header_containers.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/curved_edges/curved_edges_widget.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/curved_edges/curved_edges.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Container()
            ),
          ],
        ),
      ),
    );
  }
}


