part of 'add_expense_cubit.dart';

@immutable
sealed class AddExpenseState {}

final class AddExpenseInitial extends AddExpenseState {}

final class AddExpenseLoading extends AddExpenseState {}

final class AddExpenseSuccess extends AddExpenseState {}

final class AddExpenseFailure extends AddExpenseState {
  final String errMsg;

  AddExpenseFailure({required this.errMsg});
}
