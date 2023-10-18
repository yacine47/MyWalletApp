import 'package:flutter/material.dart';

import 'add_expenses_app_bar.dart';
import 'add_expenses_list_fields.dart';
import 'card_list_item.dart';
import 'category_list_view.dart';
import 'custom_button_add_expenses.dart';
import 'display_icon_button_list_view.dart';

class AddExpensesViewBody extends StatelessWidget {
  const AddExpensesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 56),
            const AddExpensesAppBar(),
            const SizedBox(height: 16),
            const CardListItem(child: DisplayIconButtonListView()),
            const CardListItem(
              child: AddExpensesListFiels(),
            ),
            const CardListItem(child: CategoryListView()),
            const SizedBox(height: 16),
            CustomButtonAddExpenses(
              title: 'Done',
              onTap: () {},
            ),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
