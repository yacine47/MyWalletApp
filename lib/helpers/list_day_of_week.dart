class ListDayOfWeek {
  static int getSaturday(int weekDay) {
    if (weekDay == 6) {
      return 0;
    } else {
      if (weekDay > 6) {
        return getSaturday(weekDay - 1) + 1;
      } else {
        weekDay += 7;
        return getSaturday(weekDay);
      }
    }
  }

  static List<int> getDayOfWeek() {
    int dayWeek = getSaturday(DateTime.now().weekday);
    List<int> days = [];
    int day = DateTime.now().day;

    for (int i = 0; i < 7; i++) {
      days.add(day - dayWeek + i);
    }
    return days;
  }
}
