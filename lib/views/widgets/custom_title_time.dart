import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_wallet_app/helpers/date_format_helper.dart';

import '../../constants.dart';
import 'custom_title.dart';

class CustomTitleTime extends StatelessWidget {
  const CustomTitleTime(
      {super.key,
      required this.title,
      this.space = MainAxisAlignment.spaceBetween});
  final String title;
  final MainAxisAlignment space;
  // '12 JUN - 19 JUN'
  @override
  Widget build(BuildContext context) {
    DateTime dateTimeNow = DateTime.now();
    DateTime dateTimeBefore = dateTimeNow.subtract(const Duration(days: 7));
    String currentMonth = DateFormat('MMMM').format(dateTimeNow);
    String monthBefore = DateFormat('MMMM').format(dateTimeBefore);
    currentMonth =
        currentMonth.replaceRange(3, currentMonth.length, '').toUpperCase();

    monthBefore =
        monthBefore.replaceRange(3, monthBefore.length, '').toUpperCase();
    return Row(
      mainAxisAlignment: space,
      children: [
        CustomTitle(title: title),
        Text(
          '${DateFormatHelper.dayFormat(dateTimeBefore.day)} $monthBefore - ${DateFormatHelper.dayFormat(dateTimeNow.day)} $currentMonth',
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
