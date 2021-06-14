import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class SnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Snackbar",
            builder: (_, k) => Column(
                  children: [
                    k.options(
                        label: "Color",
                        initial: ActionChip(
                          onPressed: () {},
                          label: Container(
                            width: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: gray000,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Snackbar Message',
                                    style: TextStyle(
                                        fontFamily: "Noto Sans",
                                        fontSize: 12,
                                        color: gray000)),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          backgroundColor: tertiary900,
                          elevation: 4.0,
                        ),
                        options: [
                          Option(
                            "Green",
                            ActionChip(
                              onPressed: () {},
                              label: Container(
                                width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: gray000,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('Snackbar Message',
                                        style: TextStyle(
                                            fontFamily: "Noto Sans",
                                            fontSize: 12,
                                            color: gray000)),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: tertiary900,
                              elevation: 4.0,
                            ),
                          ),
                          Option(
                            "Yellow",
                            ActionChip(
                              onPressed: () {},
                              label: Container(
                                width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: gray000,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('Snackbar Message',
                                        style: TextStyle(
                                            fontFamily: "Noto Sans",
                                            fontSize: 12,
                                            color: Color(0xFF8A6B00))),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor: warning_tint1,
                              elevation: 4.0,
                            ),
                          ),
                        ])
                  ],
                )),
      ]);
}
