import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'typography.dart';
import 'colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  increment() {
    setState(() {
      _counter++;
    });
  }

  decrement() {
    setState(() {
      _counter--;
    });
  }

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

  final ButtonStyle secondary = ButtonStyle(backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Colors.blue.shade50;
    return Colors.blue.shade400;
  }), foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Colors.grey.shade500;
    return Colors.white;
  }), overlayColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return Colors.blue.shade500;
    if (states.contains(MaterialState.pressed)) return Colors.blue.shade300;
    return null;
  }), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  }), padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
    return EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  }), minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
    return Size(88, 36);
  }));

  final ButtonStyle outline = ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
        final Color color = states.contains(MaterialState.disabled)
            ? Colors.grey
            : Colors.yellow[700];
        return BorderSide(color: color, width: 1);
      }),
      padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
        return EdgeInsets.symmetric(vertical: 12, horizontal: 16);
      }),
      minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
        return Size(88, 36);
      }),
      overlayColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          return Colors.yellow.shade800;
        if (states.contains(MaterialState.pressed))
          return Colors.yellow.shade900;
        return null;
      }),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled))
          return Colors.grey.shade500;
        return Colors.black;
      }));

  final ButtonStyle danger = ButtonStyle(backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Color(0xFFFFEBEB);
    return danger_default;
  }), foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Colors.grey.shade500;
    return Colors.white;
  }), overlayColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return danger_tint1;
    if (states.contains(MaterialState.pressed)) return danger_shade1;
    return null;
  }), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  }), padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
    return EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  }), minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
    return Size(88, 36);
  }));

  final ButtonStyle outlineDanger = ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return danger_tint2;
        return Colors.transparent;
      }),
      side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
        final Color color = states.contains(MaterialState.disabled)
            ? danger_tint2
            : danger_default;
        return BorderSide(color: color, width: 1);
      }),
      padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
        return EdgeInsets.symmetric(vertical: 12, horizontal: 16);
      }),
      minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
        return Size(88, 36);
      }),
      overlayColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return danger_tint2;
        if (states.contains(MaterialState.pressed)) return danger_shade1;
        return null;
      }),
      foregroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled))
          return Colors.grey.shade500;
        return Colors.black;
      }));

  final ButtonStyle ghost = ButtonStyle(backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    return Colors.transparent;
  }), foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return gray050;
    return Color(0xFF006DCC);
  }), overlayColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return Color(0xFFF8F8F8);
    if (states.contains(MaterialState.pressed)) return gray050;
    return null;
  }), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  }), padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
    return EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  }), minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
    return Size(88, 36);
  }));

  final InputDecoration defaultinput = InputDecoration(
    hintText: "Example",
    labelStyle: TextStyle(color: Color(0xFF40A9FF)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(8)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
        borderRadius: BorderRadius.circular(8)),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD9D9D9), width: 1.0),
        borderRadius: BorderRadius.circular(8)),
  );

  final InputDecoration prefixInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Color(0xFF40A9FF)),
      prefixIcon: Icon(
        Icons.folder_open_outlined,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration suffixInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Color(0xFF40A9FF)),
      suffixIcon: Icon(
        Icons.folder_open_outlined,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration prefixSuffixInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Color(0xFF40A9FF)),
      prefixIcon: Icon(
        Icons.folder_open_outlined,
        color: Colors.grey,
      ),
      suffixIcon: Icon(
        Icons.close,
        color: Colors.grey,
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration prefixAddonInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Colors.black),
      isDense: true,
      prefixIcon: Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBFBFBF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: gray020),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Https://",
                  style: TextStyle(color: gray100),
                ),
              ),
            )
          ],
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBFBFBF), width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration suffixAddonInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Colors.black),
      isDense: true,
      suffixIcon: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBFBFBF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: gray020),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBFBFBF), width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration prefixSuffixAddonInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Colors.black),
      isDense: true,
      prefixIcon: Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBFBFBF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: gray020),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Https://",
                  style: TextStyle(color: gray100),
                ),
              ),
            )
          ],
        ),
      ),
      suffixIcon: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBFBFBF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: gray020),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBFBFBF), width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration prefixAddonRightInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Colors.black),
      isDense: true,
      prefixIcon: Icon(
        Icons.folder_open_outlined,
        color: Colors.grey,
      ),
      suffixIcon: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBFBFBF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: gray020),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.close,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBFBFBF), width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration suffixAddonLeftInput = InputDecoration(
      hintText: "Example",
      labelStyle: TextStyle(color: Colors.black),
      isDense: true,
      suffixIcon: Icon(
        Icons.folder_open_outlined,
        color: Colors.grey,
      ),
      prefixIcon: Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFBFBFBF),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: gray020),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Https://",
                  style: TextStyle(color: gray100),
                ),
              ),
            )
          ],
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBFBFBF), width: 1.0),
          borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
          borderRadius: BorderRadius.circular(8)));

  final InputDecoration searchInput = InputDecoration(
    hintText: "Search",
    labelStyle: TextStyle(color: Color(0xFF40A9FF)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(8)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF40A9FF), width: 1.0),
        borderRadius: BorderRadius.circular(8)),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD9D9D9), width: 1.0),
        borderRadius: BorderRadius.circular(8)),
    prefixIcon: Icon(
      Icons.search,
      color: Colors.grey,
    ),
    suffix: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Icon(
          Icons.close,
          size: 16,
        )),
  );

  final Container searchNavBar = Container(
    height: 36,
    child: TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: gray020, width: 1.0)),
          fillColor: gray020,
          filled: true,
          prefixIcon: Icon(Icons.search, color: gray050),
          hintText: "Search",
          hintStyle: TextStyle(color: gray050, fontSize: 13.0)),
      keyboardType: TextInputType.name,
    ),
  );

  final ButtonStyle stepperButton = ButtonStyle(backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return primary50;
    return primary700;
  }), foregroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Colors.grey.shade500;
    return Colors.white;
  }), overlayColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) return Colors.yellow.shade800;
    if (states.contains(MaterialState.pressed)) return Colors.yellow.shade900;
    return null;
  }), shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));
  }), padding: MaterialStateProperty.resolveWith<EdgeInsets>((_) {
    return EdgeInsets.symmetric(vertical: 8, horizontal: 8);
  }), minimumSize: MaterialStateProperty.resolveWith<Size>((_) {
    return Size(20, 20);
  }));

  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story(
            name: 'Primary Button',
            section: "Button",
            builder: (_, k) => ElevatedButton(
                  child: k.options(
                      label: "Icon",
                      initial: Text(
                        k.text(label: "Text", initial: "Button"),
                        style: BodyText2Regular,
                      ),
                      options: [
                        Option(
                            "No Icon",
                            Text(
                              "Button",
                              style: BodyText2Regular,
                            )),
                        Option(
                            "With Prepend",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                )
                              ],
                            )),
                        Option(
                            "With Append",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.black,
                                    ))
                              ],
                            )),
                        Option(
                            "Both",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.folder_open_outlined,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Button",
                                        style: BodyText2Regular,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.black,
                                    ))
                              ],
                            )),
                      ]),
                  style: this.primary,
                  onPressed:
                      k.boolean(label: 'Enabled', initial: true) ? () {} : null,
                )),
        Story(
            name: 'Secondary Button',
            section: "Button",
            builder: (_, k) => ElevatedButton(
                  child: k.options(
                      label: "Icon",
                      initial: Text(
                        k.text(label: "Text", initial: "Button"),
                        style: BodyText2Bold,
                      ),
                      options: [
                        Option(
                            "No Icon",
                            Text(
                              "Button",
                              style: BodyText2Bold,
                            )),
                        Option(
                            "With Prepend",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.folder_open_outlined,
                                      color: Colors.white,
                                    )),
                                Text(
                                  "Button",
                                  style: BodyText2Bold,
                                )
                              ],
                            )),
                        Option(
                            "With Append",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Button",
                                  style: BodyText2Bold,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    ))
                              ],
                            )),
                        Option(
                            "Both",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.folder_open_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Button",
                                        style: BodyText2Bold,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    ))
                              ],
                            )),
                      ]),
                  style: this.secondary,
                  onPressed:
                      k.boolean(label: 'Enabled', initial: true) ? () {} : null,
                )),
        Story(
          name: "Outlined Button",
          section: "Button",
          builder: (_, k) => OutlinedButton(
            child: k.options(
                label: "Icon",
                initial: Text(
                  k.text(label: "Text", initial: "Button"),
                  style: BodyText2Regular,
                ),
                options: [
                  Option(
                      "No Icon",
                      Text(
                        "Button",
                        style: BodyText2Regular,
                      )),
                  Option(
                      "With Prepend",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.folder_open_outlined,
                                color: Colors.black,
                              )),
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          )
                        ],
                      )),
                  Option(
                      "With Append",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ))
                        ],
                      )),
                  Option(
                      "Both",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ))
                        ],
                      )),
                ]),
            style: this.outline,
            onPressed:
                k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          ),
        ),
        Story(
            name: 'Danger Button',
            section: "Button",
            builder: (_, k) => ElevatedButton(
                  child: k.options(
                      label: "Icon",
                      initial: Text(
                        k.text(label: "Text", initial: "Button"),
                        style: BodyText2Regular,
                      ),
                      options: [
                        Option(
                            "No Icon",
                            Text(
                              "Button",
                              style: BodyText2Regular,
                            )),
                        Option(
                            "With Prepend",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                )
                              ],
                            )),
                        Option(
                            "With Append",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    ))
                              ],
                            )),
                        Option(
                            "Both",
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.folder_open_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Button",
                                        style: BodyText2Regular,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.white,
                                    ))
                              ],
                            )),
                      ]),
                  style: this.danger,
                  onPressed:
                      k.boolean(label: 'Enabled', initial: true) ? () {} : null,
                )),
        Story(
          name: "Outlined Danger Button",
          section: "Button",
          builder: (_, k) => OutlinedButton(
            child: k.options(
                label: "Icon",
                initial: Text(
                  k.text(label: "Text", initial: "Button"),
                  style: BodyText2Regular,
                ),
                options: [
                  Option(
                      "No Icon",
                      Text(
                        "Button",
                        style: BodyText2Regular,
                      )),
                  Option(
                      "With Prepend",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.folder_open_outlined,
                                color: Colors.black,
                              )),
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          )
                        ],
                      )),
                  Option(
                      "With Append",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ))
                        ],
                      )),
                  Option(
                      "Both",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ))
                        ],
                      )),
                ]),
            style: this.outlineDanger,
            onPressed:
                k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          ),
        ),
        Story(
          name: "Ghost Button",
          section: "Button",
          builder: (_, k) => TextButton(
            child: k.options(
                label: "Icon",
                initial: Text(
                  k.text(label: "Text", initial: "Button"),
                  style: BodyText2Regular,
                ),
                options: [
                  Option(
                      "No Icon",
                      Text(
                        "Button",
                        style: BodyText2Regular,
                      )),
                  Option(
                      "With Prepend",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.folder_open_outlined,
                                color: Color(0xFF006DCC),
                              )),
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          )
                        ],
                      )),
                  Option(
                      "With Append",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: Color(0xFF006DCC),
                              ))
                        ],
                      )),
                  Option(
                      "Both",
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Color(0xFF006DCC),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: Color(0xFF006DCC),
                              ))
                        ],
                      )),
                ]),
            style: this.ghost,
            onPressed:
                k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          ),
        ),
        Story(
            name: "Input Field",
            builder: (_, k) => Scaffold(
                  body: Column(
                    children: [
                      k.options(
                          label: "Input Field",
                          initial: TextField(
                            enabled: k.boolean(label: "Enabled", initial: true)
                                ? true
                                : false,
                            decoration: this.defaultinput,
                            keyboardType: TextInputType.name,
                          ),
                          options: [
                            Option(
                              "None",
                              TextField(
                                decoration: this.defaultinput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Affix - Prefix",
                              TextField(
                                decoration: this.prefixInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Affix - Suffix",
                              TextField(
                                decoration: this.suffixInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Affix - Both",
                              TextField(
                                decoration: this.prefixSuffixInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Addon - Prefix",
                              TextField(
                                decoration: this.prefixAddonInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Addon - Suffix",
                              TextField(
                                decoration: this.suffixAddonInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Addon - Both",
                              TextField(
                                decoration: this.prefixSuffixAddonInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Prefix - Addon - Right",
                              TextField(
                                decoration: this.prefixAddonRightInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Option(
                              "Suffix - Addon - Left",
                              TextField(
                                decoration: this.suffixAddonLeftInput,
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          ])
                    ],
                  ),
                )),
        Story.simple(
          name: "Text Area",
          child: TextField(
            decoration: this.defaultinput,
            maxLines: 2,
            maxLength: 500,
            keyboardType: TextInputType.name,
          ),
        ),
        Story.simple(
            name: "Search Box",
            child: TextFormField(decoration: this.searchInput)),
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
        Story(
            name: "App Bar",
            builder: (_, k) => Scaffold(
                  body: Column(
                    children: [
                      k.options(
                          label: "App Bar",
                          initial: AppBar(
                            title: Text("Title Goes Here",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    fontSize: size5,
                                    color: gray100)),
                            backgroundColor: gray000,
                            elevation: 4.0,
                            leading: Icon(
                              Icons.arrow_back,
                              color: gray100,
                            ),
                            actions: [
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                              IconButton(
                                  icon: Icon(Icons.circle, color: gray050),
                                  onPressed: () => {}),
                            ],
                          ),
                          options: [
                            Option(
                                "Child",
                                AppBar(
                                  title: Text("Title Goes Here",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: size5,
                                          color: gray100)),
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  leading: Icon(
                                    Icons.arrow_back,
                                    color: gray100,
                                  ),
                                  actions: [
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon:
                                            Icon(Icons.circle, color: gray050),
                                        onPressed: () => {}),
                                  ],
                                )),
                            Option(
                                "Child Search",
                                AppBar(
                                  title: this.searchNavBar,
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  leading: Icon(
                                    Icons.arrow_back,
                                    color: gray100,
                                  ),
                                )),
                            Option(
                                "Default",
                                AppBar(
                                  title: this.searchNavBar,
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  actions: [
                                    IconButton(
                                        icon: Icon(Icons.shopping_cart,
                                            color: gray050),
                                        onPressed: () => {}),
                                    IconButton(
                                        icon: Icon(Icons.notifications,
                                            color: gray050),
                                        onPressed: () => {}),
                                  ],
                                ))
                          ])
                    ],
                  ),
                )),
        Story.simple(
            name: "Increment Stepper",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increment(),
                  style: this.stepperButton,
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: gray020),
                  padding: EdgeInsets.fromLTRB(21, 4, 21, 4),
                  child: Text(
                    "$_counter",
                    style: TextStyle(
                        fontFamily: "Noto Sans",
                        fontSize: 13.0,
                        color: gray100,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                ElevatedButton(
                  onPressed: decrement(),
                  style: this.stepperButton,
                  child: Icon(
                    Icons.remove,
                    size: 20,
                  ),
                ),
              ],
            )),
        Story.simple(
            name: "Spinner",
            child: Container(
              width: 118.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: gray020),
              padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: increment(),
                    icon: Icon(
                      Icons.add,
                      size: 20,
                      color: primary700,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("$_counter",
                      style: TextStyle(
                          fontFamily: "Noto Sans",
                          fontSize: 13.0,
                          color: gray100,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 4,
                  ),
                  IconButton(
                    onPressed: decrement(),
                    icon: Icon(
                      Icons.remove,
                      size: 20,
                      color: primary700,
                    ),
                  ),
                ],
              ),
            )),
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
        Story.simple(
            name: "Overflow Menu",
            child: PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              elevation: 8.0,
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("Pengaturan",
                      style: TextStyle(
                        fontFamily: "Noto Sans",
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                  enabled: false,
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Edit Informasi',
                          style: TextStyle(fontFamily: "Noto Sans")),
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hapus Kategori',
                          style: TextStyle(fontFamily: "Noto Sans")),
                      Icon(
                        Icons.delete,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ],
              child: Icon(Icons.more_vert, size: 24),
            )),
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
                ))
      ]);
}
