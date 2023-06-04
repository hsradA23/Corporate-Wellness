import 'package:flutter/material.dart';

class navBar extends StatelessWidget {
  const navBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -10),
      child: Transform.scale(
        scale: 0.95,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: NavigationBar(
              backgroundColor: Color(0xFF2d2b4e),
              indicatorColor: Color(0xFF2d2b4e),
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              height: 60,
              destinations: const [
                NavigationDestination(
                  icon: Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                  ),
                  label: "Home",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.white24,
                  ),
                  label: "Today",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.diversity_1_sharp,
                    color: Colors.white24,
                  ),
                  label: "Diversity",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.white24,
                  ),
                  label: "Chat",
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white24,
                  ),
                  label: "Settings",
                )
              ]),
        ),
      ),
    );
  }
}
