import 'package:flutter/material.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/views/widgets/add_expenses_view_body.dart';

class AddExpensesView extends StatelessWidget {
  const AddExpensesView({super.key});
  static String id = 'AddExpensesView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundTheme,
      body: AddExpensesViewBody(),
    );
  }
}
