import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/add_expenses_view.dart';
import 'package:my_wallet_app/views/home_view.dart';
import 'package:my_wallet_app/views/statistics_view.dart';

void main() {
  runApp(const MyWalletApp());
}

class MyWalletApp extends StatelessWidget {
  const MyWalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
        AddExpensesView.id: (context) => const AddExpensesView(),
        StatisticsView.id: (context) => const StatisticsView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
