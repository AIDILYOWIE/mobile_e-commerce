import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:mobile_ecommerce/common/widgets/images/e_circular_image.dart';
import 'package:mobile_ecommerce/common/widgets/sections/section_heading.dart';
import 'package:mobile_ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/image_strings.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: EAppBar(title: Text("Profile"), showBackArrow: true),
      body: Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            //  Profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const ECircularImage(
                    image: EImages.user1,
                    width: 100,
                    height: 100,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Change Profile Picture"),
                  ),
                ],
              ),
            ),

            // Details
            const SizedBox(height: ESizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems),

            // Heading Profile info
            const ESectionHeading(
              title: "Profile Information",
              showActionButton: false,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),

            EProfileMenu(
              onPressed: () {},
              title: "Name",
              value: "Ceyla Anggun",
            ),
            EProfileMenu(
              onPressed: () {},
              title: "Username",
              value: "Ceyla Anggun Grafiela",
            ),

            const SizedBox(height: ESizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems),

            // Heading Personal info
            const ESectionHeading(
              title: "Personal Information",
              showActionButton: false,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),

            EProfileMenu(
              onPressed: () {},
              title: "User ID",
              value: "220213",
              icon: Iconsax.copy_copy,
            ),
            EProfileMenu(
              onPressed: () {},
              title: "E-mail",
              value: "ceylaAnggun@gmail.com",
            ),
            EProfileMenu(
              onPressed: () {},
              title: "Phone number",
              value: "+62-8314-49017-165",
            ),
            EProfileMenu(onPressed: () {}, title: "Gender", value: "Female"),
            EProfileMenu(
              onPressed: () {},
              title: "Date of Birth",
              value: "22 Feb 2008",
            ),

            const Divider(),
            const SizedBox(height: ESizes.spaceBtwItems),

            Center(
              child: TextButton(onPressed: (){}, child: const Text("Close Account", style: TextStyle(color: EColors.error),)),
            )
          ],
        ),
      ),
    );
  }
}
