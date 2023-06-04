import 'package:corporate_wellbeing/cardsPanel.dart';
import 'package:corporate_wellbeing/navigationBar.dart';
import 'package:corporate_wellbeing/greeting.dart';
import 'package:corporate_wellbeing/tasks.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: navBar(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Greeting(),
                  const Row(
                    // Your progress
                    children: [
                      Text(
                        "Your progress",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xF02d2b4e)),
                      ),
                    ],
                  ),
                  Container(
                    height: 250,
                    child: AllCards(),
                    padding: EdgeInsets.only(top: 10),
                  ),
                  // Cards

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sunday, June 4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Color(0xF02d2b4e)),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.calendar_month,
                            color: Color(0xF02d2b4e),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0x202d2b4e),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                      ],
                    ),
                  ),

                  Tasks()
                ],
              ),
            ),
          )),
    );
  }
}
