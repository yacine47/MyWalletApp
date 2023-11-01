import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/models/category_model.dart';
import 'package:my_wallet_app/models/expense_model.dart';

part 'add_expense_state.dart';

class AddExpenseCubit extends Cubit<AddExpenseState> {
  AddExpenseCubit() : super(AddExpenseInitial());

  late String date;
  late CategoryModel category;
  late double price;
  late String describtion;

  Future<void> addExpense() async {
    date =
        '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';

    emit(AddExpenseLoading());
    try {
      Box<ExpenseModel> noteBox = Hive.box<ExpenseModel>(kExpenseBox);
      await noteBox.add(ExpenseModel(
          price: price,
          category: category,
          date: date,
          description: describtion));
      emit(AddExpenseSuccess());
    } catch (e) {
      emit(AddExpenseFailure(errMsg: e.toString()));
    }
  }
}
