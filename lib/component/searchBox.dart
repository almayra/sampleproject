import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SearchBox extends StatelessWidget {
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
        Story.simple(
            name: "Search Box",
            child: TextFormField(decoration: this.searchInput)),
      ]);
}
