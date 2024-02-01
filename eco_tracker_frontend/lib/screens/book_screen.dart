import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_waiting2.png',
              fit: BoxFit.cover,
              width: 136,
            ),
            SizedBox(height: defaultMargin),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                'Maaf fitur ini masih dalam perbaikan, jadi harap bersabar yaa!!!',
                style: tertiaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
