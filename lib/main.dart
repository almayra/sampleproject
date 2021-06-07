import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'typography.dart';
import 'colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                            ))
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
                            ))
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
                      ))
                ]),
            style: this.outline,
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
                              Icons.chevron_left,
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
                                "Nav Bar Child",
                                AppBar(
                                  title: Container(
                                    height: 36,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              borderSide: BorderSide(
                                                  color: gray020, width: 1.0)),
                                          fillColor: gray020,
                                          filled: true,
                                          prefixIcon: Icon(Icons.search,
                                              color: gray050),
                                          hintText: "Search",
                                          hintStyle: TextStyle(
                                              color: gray050, fontSize: 13.0)),
                                      keyboardType: TextInputType.name,
                                    ),
                                  ),
                                  backgroundColor: gray000,
                                  elevation: 4.0,
                                  leading: Icon(
                                    Icons.chevron_left,
                                    color: gray100,
                                  ),
                                )),
                            Option(
                                "Nav Bar Child",
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
                                    Icons.chevron_left,
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
                                "Nav Bar",
                                AppBar(
                                  title: Container(
                                      height: 36,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                borderSide: BorderSide(
                                                    color: gray020,
                                                    width: 1.0)),
                                            fillColor: gray020,
                                            filled: true,
                                            prefixIcon: Icon(Icons.search,
                                                color: gray050),
                                            hintText: "Search",
                                            hintStyle: TextStyle(
                                                color: gray050,
                                                fontSize: 13.0)),
                                        keyboardType: TextInputType.name,
                                      )),
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
                ))
      ]);
}
