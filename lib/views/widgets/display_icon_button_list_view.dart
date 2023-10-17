import 'package:flutter/material.dart';
import 'package:my_wallet_app/helpers/list_day_of_week.dart';

import '../../models/weekday_model.dart';
import 'custom_icon_button.dart';
import 'icon_button_list_view.dart';

class DisplayIconButtonListView extends StatelessWidget {
  const DisplayIconButtonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButtonListView(itemBuilder: (context, index) {
            List<WeekDayModel> weekDays = WeekDayModel.days;
            return GestureDetector(
                onTap: () {},
                child: CustomWeekDayIconButton(
                  isSelected: DateTime.now().weekday == weekDays[index].value,
                  day: WeekDayModel.days[index],
                ));
          }),
          const SizedBox(height: 16),
          IconButtonListView(itemBuilder: (context, index) {
            final List<int> days = ListDayOfWeek.getDayOfWeek();
            return GestureDetector(
                onTap: () {},
                child: CustomDayIconButton(
                  isSelected: DateTime.now().day == days[index],
                  day: days[index],
                ));
          }),
        ],
      ),
    );
  }
}
