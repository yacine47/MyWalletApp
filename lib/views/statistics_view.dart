import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/widgets/statistics_view_body.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});
  static String id = 'StatisticsView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: StatisticsViewBody() ,
    );
  }
}
