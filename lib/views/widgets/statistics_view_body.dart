import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/widgets/circle_background.dart';
import 'package:my_wallet_app/views/widgets/custom_app_bar_views.dart';

import 'card_list_item.dart';
import 'custom_pie_chart.dart';
import 'expense_list_button.dart';

class StatisticsViewBody extends StatefulWidget {
  const StatisticsViewBody({super.key});

  @override
  State<StatisticsViewBody> createState() => _StatisticsViewBodyState();
}

class _StatisticsViewBodyState extends State<StatisticsViewBody> {
  final Map<String, double> dataMap = {
    'Fast Food    ': 100,
    'Travel    ': 100,
    'study   ': 100,
    'learn    ': 100,
    'Tax   ': 100,
  };
  @override
  Widget build(BuildContext context) {
    return CircleBackground(
      paddingHorizontal: 20,
      child: Column(
        children: [
          const SizedBox(height: 56),
          const CustomAppBarViews(title: 'STATISTICS'),
          const SizedBox(height: 36),
          CardListItem(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ExpenseListButton(),
                  const SizedBox(
                    height: 108,
                  ),
                  CustomPieChart(
                    dataMap: dataMap,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
