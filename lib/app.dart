import 'package:flutter/material.dart';
import 'package:mobile_ecommerce/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// -- README(Docs[3]) -- Bindings
      title: "Starter Template",
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,

    );
  }
}