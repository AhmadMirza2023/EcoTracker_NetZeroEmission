import 'package:eco_tracker_frontend/theme.dart';
import 'package:eco_tracker_frontend/widgets/alternative_auth_box.dart';
import 'package:eco_tracker_frontend/widgets/button_register_login.dart';
import 'package:eco_tracker_frontend/widgets/form_register.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height + 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  backgroundColor1,
                  backgroundColor2,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.08, 0.65]),
          ),
          child: Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register',
                  style: tertiaryTextStyle.copyWith(
                    fontSize: 30,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Ayo buat akunmu dan mari perbaiki emisi karbonmu!',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                FormRegister(),
                SizedBox(
                  height: 20,
                ),
                ButtonRegisterLogin(
                  name: 'Sign Up',
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 45),
                    backgroundColor: backgroundColor2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Sudah punya akun?',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'atau lanjut dengan',
                  style: tertiaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AlternativeAuthBox(
                        imageLogo: 'assets/icon_google.png',
                      ),
                      AlternativeAuthBox(
                        imageLogo: 'assets/icon_facebook.png',
                      ),
                      AlternativeAuthBox(
                        imageLogo: 'assets/icon_apple.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
