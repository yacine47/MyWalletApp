import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/widgets/app_bar_statistics.dart';
import 'package:pie_chart/pie_chart.dart';

import 'card_list_item.dart';
import 'expense_list_button.dart';

class StatisticsViewBody extends StatefulWidget {
  const StatisticsViewBody({super.key});

  @override
  State<StatisticsViewBody> createState() => _StatisticsViewBodyState();
}

class _StatisticsViewBodyState extends State<StatisticsViewBody> {
  final Map<String, double> dataMap = {
    'Fast Food    ': 2600,
    'Travel    ': 500,
    'study   ': 1000,
    'learn    ': 1000,
    'Tax   ': 5600
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 56),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: AppBarStatistics(),
        ),
        const SizedBox(height: 36),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CardListItem(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ExpenseListButton(),
                  const SizedBox(
                    height: 88,
                  ),
                  CustomPieChart(
                    dataMap: dataMap,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key, required this.dataMap});
  final Map<String, double> dataMap;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      chartValuesOptions: const ChartValuesOptions(
          showChartValuesInPercentage: true,
          showChartValuesOutside: true,
          chartValueBackgroundColor: Colors.black12,
          showChartValues: true,
          chartValueStyle: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
      dataMap: dataMap,
      chartRadius: 248,
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
