import 'package:eco_tracker_frontend/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartIndicator extends StatelessWidget {
  const PieChartIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final double darkBlue = 70;
    final double lightBlue = 30;
    return PieChart(
      swapAnimationCurve: Curves.easeInQuint,
      swapAnimationDuration: Duration(
        milliseconds: 750,
      ),
      PieChartData(
        sectionsSpace: 0,
        centerSpaceRadius: 20,
        sections: [
          PieChartSectionData(
            radius: 25,
            showTitle: false,
            value: darkBlue,
            color: tertiaryColor,
            badgeWidget: Align(
              alignment: FractionalOffset(0.35, 0.6),
              child: Container(
                width: 40,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: backgroundColor2.withOpacity(0.8),
                ),
                child: Center(
                  child: Text(
                    '${darkBlue.toInt()}%',
                    style: tertiaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          PieChartSectionData(
            radius: 25,
            showTitle: false,
            value: lightBlue,
            color: backgroundColor3,
            badgeWidget: Align(
              alignment: FractionalOffset(0.65, 0.4),
              child: Container(
                width: 40,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: backgroundColor2.withOpacity(0.8),
                ),
                child: Center(
                  child: Text(
                    '${lightBlue.toInt()}%',
                    style: tertiaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
