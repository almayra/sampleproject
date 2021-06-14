import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Notification",
            builder: (_, k) => Column(
                  children: [
                    k.options(
                        label: "Type",
                        initial: Card(
                            color: gray000,
                            child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Pesananmu sudah selesai",
                                            style: TextStyle(
                                                fontFamily: "Noto Sans",
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: gray100)),
                                        Text("13 Jan",
                                            style: TextStyle(
                                                fontFamily: "Noto Sans",
                                                fontSize: 12,
                                                color: gray050))
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium integer id feugiat massa fusce vulputate blandit.",
                                        style: TextStyle(
                                            fontFamily: "Noto Sans",
                                            fontSize: 12,
                                            color: gray070))
                                  ],
                                ))),
                        options: [
                          Option(
                            "Text Only",
                            Card(
                                color: gray000,
                                child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Pesananmu sudah selesai",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: gray100)),
                                            Text("13 Jan",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 12,
                                                    color: gray050))
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium integer id feugiat massa fusce vulputate blandit.",
                                            style: TextStyle(
                                                fontFamily: "Noto Sans",
                                                fontSize: 12,
                                                color: gray070))
                                      ],
                                    ))),
                          ),
                          Option(
                              "With Hero Image",
                              Card(
                                  color: gray000,
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Pesananmu sudah selesai",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: gray100)),
                                                Text("13 Jan",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 12,
                                                        color: gray050))
                                              ]),
                                          SizedBox(height: 8),
                                          Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium integer id feugiat massa fusce vulputate blandit.",
                                              style: TextStyle(
                                                  fontFamily: "Noto Sans",
                                                  fontSize: 12,
                                                  color: gray070)),
                                          SizedBox(height: 8),
                                          Image.asset(
                                            'BannerImage.png',
                                            fit: BoxFit.fill,
                                            height: 153,
                                          ),
                                        ]),
                                  ))),
                          Option(
                              "With Image Thumbnail",
                              Card(
                                  color: gray000,
                                  child: Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'ProductImage.png',
                                            width: 80,
                                            height: 80,
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "Pesananmu sudah selesai",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Noto Sans",
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    gray100)),
                                                        Text("13 Jan",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    "Noto Sans",
                                                                fontSize: 12,
                                                                color: gray050))
                                                      ]),
                                                  SizedBox(height: 8),
                                                  Text(
                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium integer id feugiat massa fusce vulputate blandit.",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "Noto Sans",
                                                          fontSize: 12,
                                                          color: gray070)),
                                                ]),
                                          ),
                                        ],
                                      )))),
                        ])
                  ],
                )),
      ]);
}
