import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/cubits/my_bloc_observer.dart';
import 'package:my_wallet_app/views/add_expenses_view.dart';
import 'package:my_wallet_app/views/home_view.dart';
import 'package:my_wallet_app/views/statistics_view.dart';

import 'models/category_model.dart';
import 'models/expense_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CategoryModelAdapter());
  Hive.registerAdapter(ExpenseModelAdapter());
  Hive.openBox<ExpenseModel>(kExpenseBox);

  BlocOverrides.runZoned(
    () => runApp(const MyWalletApp()),
    blocObserver: MyBlocObserver(),
  );
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
