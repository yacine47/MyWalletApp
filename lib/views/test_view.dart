import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  var dateNow = DateTime(2023, 8, 15);
  late DateTime dateBeforeMonth =
      DateTime(dateNow.year, dateNow.month - 1, dateNow.day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            child: Text(dateBeforeMonth.toString()),
          ),
        ));
  }
}
// i have two solution 

// 1- : 
getDateMonth() {
  List month = [];
  List items = [];
  int i = items.length -1;
  DateTime dateNow = DateTime.now();
  DateTime dateBMonth = DateTime(dateNow.year, dateNow.month - 1, dateNow.day);
  while (dateNow.year == dateBMonth.year &&
      dateNow.month == dateBMonth.month &&
      dateNow.day == dateBMonth.day &&
      i >= 0) {
    
  }
}


// 2- : 

// index Of