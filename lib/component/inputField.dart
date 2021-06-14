import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class InputField extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) => Storybook(children: [
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
      ]);
}
