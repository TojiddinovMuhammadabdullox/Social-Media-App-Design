import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:exam/splash/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double splashIconSize;
    if (screenWidth < 600) {
      splashIconSize = screenWidth * 0.5;
    } else if (screenWidth < 1200) {
      splashIconSize = screenWidth * 0.4;
    } else {
      splashIconSize = screenWidth * 0.3;
    }

    return Scaffold(
      body: AnimatedSplashScreen(
        splash: "assets/images/logo.png",
        splashIconSize: splashIconSize,
        centered: true,
        nextScreen: const OnBoarding(),
        backgroundColor: Colors.white,
        duration: 3000,
      ),
    );
  }
}
