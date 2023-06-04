import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Hello, Adarsh!",
          style: TextStyle(
              color: Color(0xFF2d2b4e),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: Color(0xF02d2b4e)),
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: const ClipOval(
            child: Image(
              image: AssetImage('assets/person.webp'),
              height: 60,
            ),
          ),
        )
      ],
    );
  }
}
