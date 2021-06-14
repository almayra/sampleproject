import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';
import '../typography.dart';

class WidgetCard extends StatelessWidget {
  final ButtonStyle primary = ButtonStyle(backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return primary50;
    return primary700;
  }), foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Colors.grey.shade500;
    return Colors.black;
  }), overlayColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return Colors.yellow.shade800;
    if (states.contains(MaterialState.pressed)) return Colors.yellow.shade900;
    return null;
  }), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  }), padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
    return EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  }), minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
    return Size(88, 36);
  }));

  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: "Widget",
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
                                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        new Image.asset(
                                          'BNI.png',
                                          height: 20,
                                          width: 60,
                                        ),
                                        Icon(Icons.chevron_right,
                                            color: gray100)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: gradient2),
                                          child: Icon(Icons.credit_card),
                                        ),
                                        SizedBox(width: 8),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Saldo Aktif",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 10,
                                                    color: gray100)),
                                            SizedBox(width: 4),
                                            Text("Rp 2.000.000",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: gray070))
                                          ],
                                        )
                                      ])),
                            ],
                          ),
                        ),
                        options: [
                          Option(
                            "Bank",
                            Card(
                              color: gray000,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 16, 16, 0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            new Image.asset(
                                              'BNI.png',
                                              height: 20,
                                              width: 60,
                                            ),
                                            Icon(Icons.chevron_right,
                                                color: gray100)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  gradient: gradient2),
                                              child: Icon(Icons.credit_card),
                                            ),
                                            SizedBox(width: 8),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Saldo Aktif",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 10,
                                                        color: gray100)),
                                                SizedBox(width: 4),
                                                Text("Rp 2.000.000",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: gray070))
                                              ],
                                            )
                                          ])),
                                ],
                              ),
                            ),
                          ),
                          Option(
                            "Product Catalog",
                            Card(
                              color: gray000,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.store,
                                                      color: secondary900,
                                                      size: 24,
                                                    ),
                                                    SizedBox(width: 8),
                                                    Text("Katalog Produk",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Noto Sans",
                                                            fontSize: 12,
                                                            color: gray100)),
                                                  ],
                                                ),
                                                Icon(Icons.chevron_right,
                                                    color: gray100)
                                              ]),
                                          SizedBox(height: 16),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        child: Image.asset(
                                                            'Fertilizer.png',
                                                            height: 80,
                                                            width: 80)),
                                                    SizedBox(height: 4),
                                                    Text("Pupuk",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Noto Sans",
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: gray070))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        child: Image.asset(
                                                            'Fertilizer.png',
                                                            height: 80,
                                                            width: 80)),
                                                    SizedBox(height: 4),
                                                    Text("Pupuk",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Noto Sans",
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: gray070))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        child: Image.asset(
                                                            'Fertilizer.png',
                                                            height: 80,
                                                            width: 80)),
                                                    SizedBox(height: 4),
                                                    Text("Pupuk",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Noto Sans",
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: gray070))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        child: Image.asset(
                                                            'Fertilizer.png',
                                                            height: 80,
                                                            width: 80)),
                                                    SizedBox(height: 4),
                                                    Text("Pupuk",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Noto Sans",
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: gray070)),
                                                  ],
                                                ),
                                              ]),
                                          SizedBox(height: 16),
                                          SizedBox(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text("Mulai Belanja",
                                                      style: BodyText1Bold),
                                                  style: this.primary))
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Option(
                            "PT X",
                            Card(
                              color: gray000,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 16, 16, 0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                new Image.asset(
                                                  'Agricon.png',
                                                  height: 32,
                                                  width: 32,
                                                ),
                                                SizedBox(width: 8),
                                                Text(
                                                    "Tentang PT Agriculture Construction",
                                                    style: TextStyle(
                                                        fontFamily: "Noto Sans",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: gray100)),
                                              ],
                                            ),
                                            Icon(Icons.chevron_right,
                                                color: gray100)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                                "Agricon adalah pemasok terkemuka bangunan pra-fabrikasi dan rekayasa khusus untuk industri pertanian.",
                                                style: TextStyle(
                                                    fontFamily: "Noto Sans",
                                                    fontSize: 12,
                                                    color: gray100)),
                                            SizedBox(height: 8),
                                            Image.asset('Header.png',
                                                fit: BoxFit.fill),
                                            SizedBox(height: 8),
                                            SizedBox(
                                                width: double.infinity,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                        "Lihat Selengkapnya",
                                                        style: BodyText1Bold),
                                                    style: this.primary))
                                          ])),
                                ],
                              ),
                            ),
                          ),
                        ])
                  ],
                ))
      ]);
}
