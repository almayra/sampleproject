import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class CCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Card",
            builder: (_, k) => Column(
                  children: [
                    k.options(
                        label: "Type",
                        initial: Card(
                          color: gray000,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Material(
                                    elevation: 8.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.asset(
                                          'assets/Image.png',
                                          height: 200,
                                          fit: BoxFit.fitWidth,
                                        )),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, top: 4, right: 8, bottom: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Product Title",
                                          style: TextStyle(
                                              fontFamily: "Noto Sans",
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: gray100)),
                                      Text("Rp 100.000/Pcs",
                                          style: TextStyle(
                                              fontFamily: "Noto Sans",
                                              fontSize: 12,
                                              color: gray070))
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        options: [
                          Option(
                              "Type One",
                              Card(
                                color: gray000,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: Image.asset(
                                                'assets/Image.png',
                                                height: 200,
                                                fit: BoxFit.fitWidth,
                                              )),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            top: 4,
                                            right: 8,
                                            bottom: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Product Title",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: gray100)),
                                            Text("Rp 100.000/Pcs",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 12,
                                                    color: gray070))
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Option(
                              "Type two",
                              Card(
                                color: gray000,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: Image.asset(
                                                'assets/Image.png',
                                                height: 200,
                                                fit: BoxFit.fitWidth,
                                              )),
                                        )),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            top: 4,
                                            right: 8,
                                            bottom: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Product Title",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF006DCC))),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("Status:",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 12,
                                                        color: gray070)),
                                                SizedBox(width: 4),
                                                Text("Available",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF006DCC))),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("Harga:",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 12,
                                                        color: gray070)),
                                                SizedBox(width: 4),
                                                Text("Rp 20.000/Unit",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 12,
                                                        color: gray070)),
                                              ],
                                            ),
                                            Text("280.909.8990",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 13,
                                                    color: gray070)),
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Option(
                              "Type Three",
                              Card(
                                color: gray000,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.all(18),
                                        child: Container(
                                            width: 80.0,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey,
                                                    offset: Offset(
                                                        0.0, 1.0), //(x,y)
                                                    blurRadius: 6.0,
                                                  ),
                                                ],
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        'assets/Image.png'))))),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            top: 4,
                                            right: 8,
                                            bottom: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Courtney Henry",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 14,
                                                    color: Color(0xFF006DCC))),
                                            Text("+62-819-5558-60",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 13,
                                                    color: gray100)),
                                            Text("38766940",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 12,
                                                    color: gray070)),
                                          ],
                                        ))
                                  ],
                                ),
                              )),
                          Option(
                              "Type Four",
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: gradient4,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33064784),
                                      offset: Offset(0.0, 4.0), //(x,y)
                                      blurRadius: 13.0,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(18, 12, 18, 12),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Kredit Tersedia",
                                              style: TextStyle(
                                                  fontFamily: "Noto Sans",
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: gray000)),
                                          SizedBox(
                                            width: 2.0,
                                          ),
                                          Text("Rp 2.000.000",
                                              style: TextStyle(
                                                  fontFamily: "Noto Sans",
                                                  fontSize: 16,
                                                  color: gray000)),
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Text("Kredit Digunakan",
                                              style: TextStyle(
                                                  fontFamily: "Noto Sans",
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.normal,
                                                  color: gray000)),
                                          Text("Rp 8.000.000",
                                              style: TextStyle(
                                                  fontFamily: "Noto Sans",
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: gray000)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(18, 12, 18, 12),
                                        child: Row(children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.add_box, size: 24.0),
                                              SizedBox(
                                                width: 4.0,
                                              ),
                                              Text("Make Payment",
                                                  style: TextStyle(
                                                      fontFamily: "Noto Sans",
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: gray000))
                                            ],
                                          ),
                                          SizedBox(
                                            width: 24.0,
                                          ),
                                          VerticalDivider(
                                            color: Color(0x3DFFFFFF),
                                            indent: 20.0,
                                            endIndent: 20.0,
                                          ),
                                          SizedBox(
                                            width: 24.0,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.access_time,
                                                  size: 24.0),
                                              SizedBox(
                                                width: 4.0,
                                              ),
                                              Text("History",
                                                  style: TextStyle(
                                                      fontFamily: "Noto Sans",
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: gray000))
                                            ],
                                          )
                                        ]))
                                  ],
                                ),
                              )),
                        ])
                  ],
                )),
      ]);
}
