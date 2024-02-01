import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class ButtonRegisterLogin extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  ButtonRegisterLogin({required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: tertiaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        name,
        style: whiteTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
  }
}
