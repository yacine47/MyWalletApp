class WeekDayModel {
  final String name;
  final int value;

  WeekDayModel({
    required this.name,
    required this.value,
  });

  static List<WeekDayModel> days = [
    WeekDayModel(
      name: 'Saturday',
      value: 6,
    ),
    WeekDayModel(
      name: 'Sunday',
      value: 7,
    ),
    WeekDayModel(
      name: 'Monday',
      value: 1,
    ),
    WeekDayModel(
      name: 'Tuesday',
      value: 2,
    ),
    WeekDayModel(
      name: 'Wednesday',
      value: 3,
    ),
    WeekDayModel(
      name: 'Thursday',
      value: 4,
    ),
    WeekDayModel(
      name: 'Friday',
      value: 5,
    ),
  ];
}
