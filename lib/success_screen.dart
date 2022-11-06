import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nft_marketplace/home_screen.dart';
import 'package:nft_marketplace/theme.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets8.lottiefiles.com/packages/lf20_atippmse.json',
                width: 250,
                height: 250),
            const SizedBox(height: 40),
            Text(
              'Successful!',
              style:
                  primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            const SizedBox(height: 12),
            Text(
              "Thanks For Your Order!, I Hope You're Happy",
              style: secondaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 315,
              height: 55,
              margin: const EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Done',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                    color: Colors.white,
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
