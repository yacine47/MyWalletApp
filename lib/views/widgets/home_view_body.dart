import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/widgets/custom_app_bar.dart';
import 'package:my_wallet_app/views/widgets/custom_title.dart';

import 'custom_title_time.dart';
import 'custom_wallet_card.dart';
import 'expense_list_button.dart';
import 'list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: const [
          SizedBox(height: 28),
          CustomAppBar(),
          SizedBox(height: 18),
          CustomWalletCard(),
          SizedBox(height: 17),
          CustomTitle(title: 'Expense list'),
          SizedBox(height: 13),
          ExpenseListButton(),
          SizedBox(height: 32),
          CustomTitleTime(
            title: 'Expense list',
            date: '12 JUN - 19 JUN',
          ),
          SizedBox(height: 12),
          ListItem(),
          SizedBox(height: 32),
          CustomTitleTime(
            title: 'Expense list',
            date: '12 JUN - 19 JUN',
          ),
          SizedBox(height: 12),
          ListItem(),
        ],
      ),
    );
  }
}
