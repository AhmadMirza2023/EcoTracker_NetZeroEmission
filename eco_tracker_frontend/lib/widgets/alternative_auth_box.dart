import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class AlternativeAuthBox extends StatelessWidget {
  final String imageLogo;
  AlternativeAuthBox({required this.imageLogo});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 10,
        ),
      ),
      onPressed: () {},
      icon: Image.asset(
        imageLogo,
        width: 24,
        fit: BoxFit.cover,
      ),
    );
  }
}
