import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';
import '../typography.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Bottom Navigation",
            builder: (_, k) => Scaffold(
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: 0,
                    selectedLabelStyle: BodyText2Bold,
                    unselectedLabelStyle: BodyText2Regular,
                    selectedItemColor: primary700,
                    unselectedItemColor: gray050,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.access_time_outlined),
                        label: "History",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "Profile",
                      ),
                    ],
                  ),
                )),
      ]);
}
