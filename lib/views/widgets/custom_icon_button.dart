import 'package:flutter/material.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/models/weekday_model.dart';

class CustomWeekDayIconButton extends StatelessWidget {
  const CustomWeekDayIconButton({
    super.key,
    required this.isSelected,
    required this.day,
  });
  final bool isSelected;
  final WeekDayModel day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.5),
      child: isSelected == false
          ? CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black.withOpacity(.06),
              child: Text(day.name[0],
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                  )),
            )
          : CircleAvatar(
              radius: 18,
              backgroundColor: kThemeColor,
              child: Text(day.name[0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
            ),
    );
  }
}

class CustomDateIconButton extends StatelessWidget {
  final bool isSelected;
  final WeekDayModel weekday;
  final int day;

  const CustomDateIconButton({
    super.key,
    required this.isSelected,
    required this.day,
    required this.weekday,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.5),
        child: isSelected == false
            ? Container(
                width: 39,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  // color: Colors.black.withOpacity(.035),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(weekday.name.replaceRange(3, weekday.name.length, ''),
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(day.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
              )
            : Container(
                width: 39,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white.withOpacity(0.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(weekday.name.replaceRange(3, weekday.name.length, ''),
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(day.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                  ],
                ),
              ));
  }
}

class CustomDayIconButton extends StatelessWidget {
  const CustomDayIconButton({
    super.key,
    required this.isSelected,
    required this.day,
  });
  final bool isSelected;
  final int day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.5),
      child: isSelected == false
          ? CircleAvatar(
              radius: 18,
              backgroundColor: Colors.black.withOpacity(.06),
              child: Text(day.toString(),
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w500,
                  )),
            )
          : CircleAvatar(
              radius: 18,
              backgroundColor: kThemeColor,
              child: Text(day.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  )),
            ),
    );
  }
}
