import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_ecommerce/features/authetication/controllers/screens/onboarding/onboarding.dart';
import 'package:mobile_ecommerce/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// -- README(Docs[3]) -- Bindings
      title: "Starter Template",
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home:  OnBoardingScreen(),

    );
  }
}