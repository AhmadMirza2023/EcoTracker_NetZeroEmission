import 'package:eco_tracker_frontend/theme.dart';
import 'package:flutter/material.dart';

class InformasiCard extends StatelessWidget {
  final String image;
  final String day;
  final int date;
  final String month;
  final int year;
  final String title;
  InformasiCard({
    required this.date,
    required this.day,
    required this.image,
    required this.month,
    required this.title,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 193,
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(defaultMargin / 2),
      margin: EdgeInsets.only(bottom: defaultMargin / 2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(defaultMargin / 2),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 164,
              width: 145,
            ),
          ),
          SizedBox(width: defaultMargin / 2),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$day, $date $month $year',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Lihat Selengkapnya...',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
