import 'package:flutter/material.dart';
import 'package:my_wallet_app/helpers/list_day_of_week.dart';

import '../../models/weekday_model.dart';
import 'custom_icon_button.dart';
import 'icon_button_list_view.dart';

class DisplayIconButtonListView extends StatefulWidget {
  const DisplayIconButtonListView({super.key});

  @override
  State<DisplayIconButtonListView> createState() =>
      _DisplayIconButtonListViewState();
}

class _DisplayIconButtonListViewState extends State<DisplayIconButtonListView> {
  final List<int> days = ListDayOfWeek.getDayOfWeek();
  int currentIndex = ListDayOfWeek.getDayOfWeek().indexOf(DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButtonListView(itemBuilder: (context, index) {
            List<WeekDayModel> weekDays = WeekDayModel.days;
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: CustomDateIconButton(
                day: days[index],
                isSelected: currentIndex == index,
                weekday: weekDays[index],
              ),
            );
          }),
        ],
      ),
    );
  }
}










// child: CustomWeekDayIconButton(
              //   isSelected:
              //       weekDays[currentIndex].value == weekDays[index].value,
              //   day: WeekDayModel.days[index],
              // ),



               // IconButtonListView(itemBuilder: (context, index) {
          //   return GestureDetector(
          //       onTap: () {
          //         currentIndex = index;
          //         setState(() {});
          //       },
          //       child: CustomDayIconButton(
          //         isSelected: days[currentIndex] == days[index],
          //         day: days[index],
          //       ));
          // }),