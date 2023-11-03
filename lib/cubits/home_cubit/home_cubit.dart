import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/models/expense_model.dart';

import '../../helpers/date_format_helper.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<ExpenseModel> listExpense = [];

  List<ExpenseModel> diplayItems() {
    Box<ExpenseModel> expenseBox = Hive.box<ExpenseModel>(kExpenseBox);
    List<ExpenseModel> listExpense = expenseBox.values.toList();
    // emit(HomeSuccess());
    return listExpense;
  }

  void displayItemWeekly() {
    List<ExpenseModel> listExpense = diplayItems().reversed.toList();
    String currentDate = DateFormatHelper.getDayBWeek();
    int indexOfDate = listExpense.length;
    for (int i = 1; i < listExpense.length; i++) {
      if (listExpense[i].date != currentDate &&
          listExpense[i - 1].date == currentDate) {
        indexOfDate = i;
      }
    }
    listExpense.removeRange(indexOfDate, listExpense.length);
    this.listExpense = listExpense;
    emit(HomeSuccess());
  }
}
