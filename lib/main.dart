import 'package:flutter/material.dart';
import 'package:scooter_app/features/onboarding/presentation/view/onboarding_view.dart';

import 'core/theme/dark_theme.dart';
import 'core/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: const OnBoardingView()
    );
  }
}

