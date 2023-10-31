import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/widgets/custom_app_bar.dart';
import 'package:my_wallet_app/views/widgets/custom_title.dart';

import '../../constants.dart';
import '../../models/expense_model.dart';
import '../test_view.dart';
import 'custom_title_time.dart';
import 'custom_wallet_card.dart';
import 'expense_list_button.dart';
import 'item.dart';
import 'list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 28),
          const CustomAppBar(),
          const SizedBox(height: 18),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TestView(),
                    ));
              },
              child: const CustomWalletCard()),
          const SizedBox(height: 17),
          const CustomTitle(title: 'Expense list'),
          const SizedBox(height: 13),
          const ExpenseListButton(),
          const SizedBox(height: 32),
          const CustomTitleTime(
            title: 'Expense list',
            date: '12 JUN - 19 JUN',
          ),
          const SizedBox(height: 12),
          ListItem(
            itemBuilder: (context, index) => ExpenseItem(
              expense: ExpenseModel(
                category: categories[0],
                date: '12 June , 2020',
                description: '',
                price: 48,
              ),
            ),
          ),
          const SizedBox(height: 32),
          const CustomTitleTime(
            title: 'Expense list',
            date: '12 JUN - 19 JUN',
          ),
          const SizedBox(height: 12),
          ListItem(
            itemBuilder: (context, index) => ExpenseItem(
              expense: ExpenseModel(
                category: categories[0],
                date: '12 June , 2020',
                description: '',
                price: 48,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
