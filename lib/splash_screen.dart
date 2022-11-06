import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nft_marketplace/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  getInit(context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    getInit(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          child: Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_icohf8fe.json'),
        ),
      ),
    );
  }
}
