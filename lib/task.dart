import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String timeslot;
  final String startEndTime;
  final String title;
  final String subtitle;
  final int color;
  const Task(
      {super.key,
      required this.timeslot,
      required this.startEndTime,
      required this.title,
      required this.subtitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              timeslot,
              style: TextStyle(
                  color: Color(0xF02d2b4e), fontWeight: FontWeight.bold),
            ),
            Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color == 1 ? Color(0xFFFFE3E7) : Color(0xFFE6E4EE),
              ),
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: color == 1
                          ? Color.fromARGB(255, 133, 68, 82)
                          : Color(0xFF302E50),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: color == 1
                            ? Color.fromARGB(255, 133, 68, 82)
                            : Color(0xFF302E50)),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    startEndTime,
                    style: TextStyle(
                        color: color == 1
                            ? Color.fromARGB(255, 133, 68, 82)
                            : Color(0xFF302E50),
                        fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
