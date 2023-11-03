class DateFormatHelper {
  static String dayFormat(int day) {
    if (day < 10) {
      return '0$day';
    }
    return day.toString();
  }

  static String getDayBWeek() {
    DateTime dateTimeBWeek = DateTime.now().subtract(const Duration(days: 7));
    return '${dateTimeBWeek.year}-${dateTimeBWeek.month}-${dayFormat(dateTimeBWeek.day)}';
  }
}
