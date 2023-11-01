import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_wallet_app/cubits/add_expense/add_expense_cubit.dart';

import '../../constants.dart';
import 'custom_text_form_field.dart';

class AddExpensesListFiels extends StatelessWidget {
  const AddExpensesListFiels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          const CustomPriceField(),
          const SizedBox(height: 14),
          CustomTextField(
            onSaved: (data) {
              BlocProvider.of<AddExpenseCubit>(context).describtion = data!;
            },
            hint: 'Describtion',
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}

class CustomPriceField extends StatelessWidget {
  const CustomPriceField({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomTextField(
          onSaved: (data) {
            BlocProvider.of<AddExpenseCubit>(context).price =
                double.parse(data!);
          },
          hint: 'Price',
          keyboardType: const TextInputType.numberWithOptions(),
        ),
        const Positioned(
          right: 24,
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'DZD',
                style: TextStyle(
                    fontSize: 18,
                    color: kThemeColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
