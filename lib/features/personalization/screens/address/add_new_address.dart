import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const EAppBar(
        title: Text("Add new Address"),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(ESizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user_copy),
                  labelText: "Name",
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwInputFields),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile_copy),
                  labelText: "Phone Number",
                ),
              ),
              const SizedBox(height: ESizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_copy),
                        labelText: "Street",
                      ),
                    ),
                  ),
                  const SizedBox(width: ESizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.code_copy),
                        labelText: "Pose",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ESizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_3_copy),
                        labelText: "City",
                      ),
                    ),
                  ),
                  const SizedBox(width: ESizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.activity_copy),
                        labelText: "State",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: ESizes.spaceBtwInputFields),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.global_copy),
                  labelText: "Country",
                ),
              ),
              const SizedBox(height: ESizes.defaultSpace),
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text("save")),)
            ],
          ),
        ),
      ),
    );
  }
}
