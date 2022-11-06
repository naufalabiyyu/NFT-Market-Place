import 'package:flutter/material.dart';
import 'package:nft_marketplace/home_screen.dart';
import 'package:nft_marketplace/theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/on_chain.jpg'),
            Text(
              'Search Best NFT \n With Us',
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'The best platform to buy and\n sell NFT quicly and easily',
              textAlign: TextAlign.center,
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: 315,
              height: 55,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
