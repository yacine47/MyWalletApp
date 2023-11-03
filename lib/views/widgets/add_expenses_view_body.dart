import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/cubits/add_expense/add_expense_cubit.dart';
import 'package:my_wallet_app/cubits/home_cubit/home_cubit.dart';
import 'package:my_wallet_app/views/widgets/circle_background.dart';

import 'custom_app_bar_views.dart';
import 'add_expenses_list_fields.dart';
import 'card_list_item.dart';
import 'category_grid_view.dart';
import 'custom_button_add_expenses.dart';

class AddExpensesViewBody extends StatefulWidget {
  const AddExpensesViewBody({super.key});

  @override
  State<AddExpensesViewBody> createState() => _AddExpensesViewBodyState();
}

class _AddExpensesViewBodyState extends State<AddExpensesViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddExpenseCubit, AddExpenseState>(
      listener: (context, state) {
        if (state is AddExpenseLoading) {
        } else if (state is AddExpenseSuccess) {
          BlocProvider.of<HomeCubit>(context).displayItemWeekly();
          Navigator.pop(context);
        } else if (state is AddExpenseFailure) {
          debugPrint(state.errMsg);
        }
      },
      builder: (context, state) => ModalProgressHUD(
        color: kThemeColor,
        inAsyncCall: state is AddExpenseLoading,
        child: Form(
          key: formKey,
          child: CircleBackground(
            child: Column(
              children: [
                const SizedBox(height: 56),
                const CustomAppBarViews(
                  title: 'add expenses',
                ),
                const SizedBox(height: 32),
                // const CardListItem(
                //     isTransparent: true, child: DisplayIconButtonListView()),
                const CardListItem(
                  child: AddExpensesListFiels(),
                ),
                const CardListItem(child: CategoryGridView()),
                const SizedBox(height: 16),
                CustomButtonAddExpenses(
                  title: 'Done',
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      await BlocProvider.of<AddExpenseCubit>(context)
                          .addExpense();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(height: 26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
