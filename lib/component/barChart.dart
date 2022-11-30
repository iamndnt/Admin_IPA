import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../config/responsive.dart';
import '../style/colors.dart';

class BarChartCopmponent extends StatelessWidget {
  const BarChartCopmponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceBetween,
          axisTitleData:
              FlAxisTitleData(leftTitle: AxisTitle(reservedSize: 20)),
          gridData:
              FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
          titlesData: FlTitlesData(
              leftTitles: SideTitles(
                reservedSize: 30,
                getTextStyles: (value) =>
                    const TextStyle(color: Colors.grey, fontSize: 12),
                showTitles: true,
                getTitles: (value) {
                  return value==null?(value%50==0?value.toString():''):'' ;
                },
              ),
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (value) =>
                    const TextStyle(color: Colors.grey, fontSize: 12),
                getTitles: (value) {
                  if (value == 0) {
                    return 'Account';
                  } else if (value == 1) {
                    return 'Article';
                  } else if (value == 2) {
                    return 'Question';
                  } else if (value == 3) {
                    return 'Experience Post';
                  } else if (value == 4) {
                    return 'Company';
                  } else if (value == 5) {
                    return 'Quiz';
                  } else {
                    return '';
                  }
                },
              )),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(
                  y: 200,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg])),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(
                  y: 150,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(
                  y: 180,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 3, barRods: [
              BarChartRodData(
                  y: 128,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 4, barRods: [
              BarChartRodData(
                  y: 150,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg]))
            ]),
            BarChartGroupData(x: 5, barRods: [
              BarChartRodData(
                  y: 240,
                  colors: [Colors.black],
                  borderRadius: BorderRadius.circular(0),
                  width: Responsive.isDesktop(context) ? 40 : 10,
                  backDrawRodData: BackgroundBarChartRodData(
                      y: 90, show: true, colors: [AppColors.barBg]))
            ]),
          ]),
      swapAnimationDuration: Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}
