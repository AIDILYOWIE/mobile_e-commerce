import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';
import 'package:mobile_ecommerce/utils/device/device_utility.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EAppBar({
    super.key,
    this.title,
    this.showBackArrow = false ,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed ,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ESizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left),
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement build
  Size get preferredSize => Size.fromHeight(EDeviceUtility.getAppBarHeight());
}
