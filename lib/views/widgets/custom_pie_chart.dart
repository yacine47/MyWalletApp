import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../constants.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key, required this.dataMap});
  final Map<String, double> dataMap;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      colorList: const [
        // --
        kThemeColor,
        Color(0xffFF6BB9),
        Color(0xff6BFFAC),
        Color(0xffFF6B82),
        Color(0xff6BFFF3),
        Color(0xffFFC54C),
        Color(0xffFFE84C),
        // Color(0xffFF4C4C),
        Color.fromARGB(255, 0, 255, 208),
        Color(0xffFF4CF2),
        Color(0xff4C76FF),
        // --
      ],
      chartValuesOptions: const ChartValuesOptions(
          showChartValuesInPercentage: true,
          showChartValuesOutside: true,
          chartValueBackgroundColor: Colors.black12,
          showChartValues: true,
          chartValueStyle: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
      dataMap: dataMap,
      chartRadius: 230,
      ringStrokeWidth: 80,
      chartLegendSpacing: 100,
      // initialAngleInDegree: 90,
      chartType: ChartType.ring,
      legendOptions: const LegendOptions(
          legendShape: BoxShape.circle,
          legendPosition: LegendPosition.bottom,
          showLegends: true,
          showLegendsInRow: true),
    );
  }
}
