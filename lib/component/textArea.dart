import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TextArea extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) => Storybook(children: [
        Story.simple(
          name: "Text Area",
          child: TextField(
            decoration: this.defaultinput,
            maxLines: 2,
            maxLength: 500,
            keyboardType: TextInputType.name,
          ),
        ),
      ]);
}
