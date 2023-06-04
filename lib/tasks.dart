import 'package:corporate_wellbeing/task.dart';
import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        Task(
            color: 1,
            timeslot: "10:00 AM",
            startEndTime: "9:50 AM - 10:30 AM",
            title: "Meeting with front-end developers",
            subtitle: "Real Estate Project"),
        Task(
            color: 0,
            timeslot: "11:00 AM",
            startEndTime: "11:00 AM - 12:00 PM",
            title: "Internal Marketing Session",
            subtitle: "Marketing Department"),
        Task(
            color: 1,
            timeslot: "12:00 PM",
            startEndTime: "12:00 PM - 12:30 PM",
            title: "Coffee Break",
            subtitle: "Cafeteria"),
      ],
    ));
  }
}
