import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/common/widgets/costume_shapes/containers/primary_header_containers.dart';
import 'package:mobile_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
              child: Column(
                children: [ 
                  EHomeAppBar()
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}




