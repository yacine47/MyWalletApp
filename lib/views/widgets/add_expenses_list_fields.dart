import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_text_field.dart';

class AddExpensesListFiels extends StatelessWidget {
  const AddExpensesListFiels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Stack(
            children: [
              CustomTextField(
                hint: 'Price',
                keyboardType: TextInputType.numberWithOptions(),
              ),
              Positioned(
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
              )
            ],
          ),
          SizedBox(height: 14),
          CustomTextField(
            hint: 'Describtion',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
