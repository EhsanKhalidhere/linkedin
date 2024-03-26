import 'package:flutter/material.dart';
import 'package:linkedin/Pages/onboarding/on_boarding_screen.dart';
import 'package:linkedin/Pages/splash/splash_page.dart';

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
      home: const SplashPage(child: OnBoardingScreen()),
    );
  }
}

