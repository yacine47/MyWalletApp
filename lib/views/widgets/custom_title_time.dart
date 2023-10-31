import 'package:flutter/material.dart';

import '../../constants.dart';
import 'custom_title.dart';

class CustomTitleTime extends StatelessWidget {
  const CustomTitleTime(
      {super.key,
      required this.title,
      required this.date,
      this.space = MainAxisAlignment.spaceBetween});
  final String title;
  final String date;
  final MainAxisAlignment space;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: space,
      children: [
        CustomTitle(title: title),
        Text(
          date,
          style: const TextStyle(
            fontSize: 11.5,
            fontWeight: FontWeight.w600,
            color: kSubTitle,
          ),
        ),
      ],
    );
  }
}
