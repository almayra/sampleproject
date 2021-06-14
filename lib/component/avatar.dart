import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Avatar",
            builder: (_, k) => Column(
                  children: [
                    k.options(
                        label: "type",
                        initial: Stack(
                          children: [
                            CircleAvatar(
                                backgroundImage: AssetImage('assets/Image.png'),
                                radius: 50),
                            Positioned(
                                bottom: 0,
                                right: 4,
                                child: Icon(Icons.add_circle,
                                    color: primary400, size: 24.0))
                          ],
                        ),
                        options: [
                          Option(
                            "Type one",
                            Stack(
                              children: [
                                CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/Image.png'),
                                    radius: 50),
                                Positioned(
                                    bottom: 0,
                                    right: 4,
                                    child: Icon(Icons.add_circle,
                                        color: primary400, size: 24.0))
                              ],
                            ),
                          ),
                          Option(
                            "Type two",
                            Stack(
                              children: [
                                CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Color(0xFF007FF4),
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/Image.png'),
                                        radius: 49)),
                                Positioned(
                                    bottom: 0,
                                    right: 4,
                                    child: Icon(Icons.add_a_photo_rounded,
                                        color: primary400, size: 24.0))
                              ],
                            ),
                          )
                        ])
                  ],
                )),
      ]);
}
