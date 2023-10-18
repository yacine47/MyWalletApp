import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButtonAddExpenses extends StatelessWidget {
  const CustomButtonAddExpenses(
      {super.key, required this.onTap, required this.title});
  final void Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: 46,
        decoration: BoxDecoration(
          color: kThemeColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
