import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class Tag extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Tag",
            builder: (_, k) => Column(
                  children: [
                    k.options(
                        label: "Color",
                        initial: ActionChip(
                          onPressed: () {},
                          label: Container(
                            width: 63,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.close,
                                  color: gray100,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text('Label',
                                    style: TextStyle(
                                        fontFamily: "Noto Sans",
                                        fontSize: 12,
                                        color: gray100)),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          backgroundColor: gray020,
                        ),
                        options: [
                          Option(
                            "White",
                            ActionChip(
                              onPressed: () {},
                              label: Container(
                                width: 63,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: gray100,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('Label',
                                        style: TextStyle(
                                            fontFamily: "Noto Sans",
                                            fontSize: 12,
                                            color: gray100)),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xFFDDDBDA), width: 1.0),
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: gray000,
                            ),
                          ),
                          Option(
                            "Light Gray",
                            ActionChip(
                              onPressed: () {},
                              label: Container(
                                width: 63,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: gray100,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('Label',
                                        style: TextStyle(
                                            fontFamily: "Noto Sans",
                                            fontSize: 12,
                                            color: gray100)),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: gray030,
                            ),
                          ),
                          Option(
                            "Gray",
                            ActionChip(
                              onPressed: () {},
                              label: Container(
                                width: 63,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: gray000,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('Label',
                                        style: TextStyle(
                                            fontFamily: "Noto Sans",
                                            fontSize: 12,
                                            color: gray000)),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              backgroundColor: gray070,
                            ),
                          )
                        ])
                  ],
                )),
      ]);
}
