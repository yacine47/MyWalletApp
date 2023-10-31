import 'package:flutter/material.dart';
import 'package:my_wallet_app/views/widgets/circle_background.dart';

import 'custom_app_bar_views.dart';
import 'add_expenses_list_fields.dart';
import 'card_list_item.dart';
import 'category_grid_view.dart';
import 'custom_button_add_expenses.dart';
import 'display_icon_button_list_view.dart';

class AddExpensesViewBody extends StatelessWidget {
  const AddExpensesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleBackground(
      child: Column(
        children: [
          const SizedBox(height: 56),
          const CustomAppBarViews(
            title: 'add expenses',
          ),
          const SizedBox(height: 6),
          const CardListItem(
              isTransparent: true, child: DisplayIconButtonListView()),
          const CardListItem(
            child: AddExpensesListFiels(),
          ),
          const CardListItem(child: CategoryGridView()),
          const SizedBox(height: 16),
          CustomButtonAddExpenses(
            title: 'Done',
            onTap: () {},
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }
}
