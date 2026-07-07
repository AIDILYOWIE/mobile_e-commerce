import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/constants/colors.dart';
import 'package:mobile_ecommerce/utils/constants/sizes.dart';

class EAppBarTheme {
  EAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: ESizes.iconMd ),
    actionsIconTheme: IconThemeData(color: Colors.black, size: ESizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: EColors.black),
  ); // AppBarTheme

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: ESizes.iconMd ),
    actionsIconTheme: IconThemeData(color: Colors.white, size: ESizes.iconMd ),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: EColors.white),
  ); // AppBarTheme
}