import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class AksiCard extends StatelessWidget {
  final String imageLogo;
  final Color color;
  final TextStyle textStyle;
  final String name;
  AksiCard({
    required this.imageLogo,
    required this.color,
    required this.textStyle,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 158,
      height: 151,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageLogo,
            width: 110,
            fit: BoxFit.cover,
          ),
          Text(
            name,
            style: textStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
