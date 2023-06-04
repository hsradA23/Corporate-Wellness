import 'package:corporate_wellbeing/card.dart';
import 'package:flutter/material.dart';

class AllCards extends StatelessWidget {
  const AllCards({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics:
          BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
      children: const [
        PerfCard(
            colorBool: 1,
            progressvalue: 19 / 40,
            progressText: "19/40",
            maintext: "Working Hours",
            secondarttext: "Working hours exceeded by 3 hours"),
        PerfCard(
            colorBool: 0,
            progressvalue: 0.82,
            progressText: "82%",
            maintext: "Your Efficiency",
            secondarttext: "Excellent Result"),
        PerfCard(
            colorBool: 0,
            progressvalue: 0.75,
            progressText: "75%",
            maintext: "Tasks Completed",
            secondarttext: "You're doing great")
      ],
    );
  }
}
//  Color(0xFFffd264)