import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(defaultMargin),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryColor,
              secondaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_splash.png',
              width: 281,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Hitung emisi anda dengan EcoTracker!',
              style: primaryTextStyle.copyWith(fontSize: 25, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Mari kita bekerja sama mendukung kebijakan Net Zero Emission untuk mengurangi dampak gas rumah kaca!',
              style: secondaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 95,
                  vertical: 25,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      tertiaryColor,
                      secondaryColor,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
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
