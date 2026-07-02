import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/elvated_button_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/text_field_theme.dart';
import 'package:mobile_ecommerce/utils/theme/custom_theme/text_theme.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ElsmSans',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.lightTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    chipTheme: EChipTheme.lightChipTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ElsmSans',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.darkTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    chipTheme: EChipTheme.darkChipTheme,
  );
}
