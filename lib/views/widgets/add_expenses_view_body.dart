import 'package:flutter/material.dart';
import 'package:my_wallet_app/constants.dart';

import 'add_expenses_app_bar.dart';
import 'card_list_item.dart';
import 'category_list_view.dart';
import 'display_icon_button_list_view.dart';

class AddExpensesViewBody extends StatelessWidget {
  const AddExpensesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 56),
            AddExpensesAppBar(),
            SizedBox(height: 16),
            CardListItem(
              child: DisplayIconButtonListView(),
            ),
            CardListItem(
              child: CategoryListView(),
            ),
            SizedBox(height: 16),
            CustomButtonAddExpenses(),
          ],
        ),
      ),
    );
  }
}

class CustomButtonAddExpenses extends StatelessWidget {
  const CustomButtonAddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 46,
      decoration: BoxDecoration(
        color: kThemeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Continue',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
