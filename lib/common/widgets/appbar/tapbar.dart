import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/device/device_utility.dart';
import 'package:mobile_ecommerce/utils/helpers/helper_functions.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  // if you want to add background color to tabs you have to wrap them in material widget
  // to do that we need [PreferredSized] widget and that's why created custom class. [PreferredSizeWidget]
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? EColors.black : EColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: EColors.primary,
        labelColor: dark ? EColors.white : EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
      ),
    );
  }

  @override 
  Size get preferredSize => Size.fromHeight(EDeviceUtility.getAppBarHeight());
}
