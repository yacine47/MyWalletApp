import 'package:flutter/material.dart';
import 'package:my_wallet_app/helpers/number_helper.dart';
import 'package:my_wallet_app/models/expense_model.dart';

import '../../constants.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        // dense: true,
        visualDensity: const VisualDensity(horizontal: 0, vertical: -2.5),
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        leading: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Image.asset(
            expense.category.image,
            width: 42,
          ),
        ),
        title: Text(
          expense.category.title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          expense.date,
          style: const TextStyle(
            fontSize: 11,
            color: kSubTitle,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Text(
          '${expense.category.isAsset ? '+${NumberHelper.removeZero(expense.price)}' : '-${NumberHelper.removeZero(expense.price)}'} DZD',
          style: TextStyle(
            fontSize: 15,
            color: expense.category.isAsset
                ? Colors.greenAccent[400]
                : const Color(0xfffa0303),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
