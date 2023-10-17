import 'package:flutter/cupertino.dart';

import 'custom_button.dart';

class ExpenseListButton extends StatelessWidget {
  const ExpenseListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButton(isActive: true, title: 'Weekly'),
        SizedBox(width: 16),
        CustomButton(isActive: false, title: 'Monthly'),
        SizedBox(width: 16),
        CustomButton(isActive: false, title: '6 Months'),
      ],
    );
  }
}
