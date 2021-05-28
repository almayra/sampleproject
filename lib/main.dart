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

  @override
  Widget build(BuildContext context) => Storybook(
        children: [
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    onPressed: k.boolean(label: 'Enabled', initial: true)
                        ? () {}
                        : null,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                    onPressed: k.boolean(label: 'Enabled', initial: true)
                        ? () {}
                        : null,
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
                              decoration: InputDecoration(
                                  hintText: "Example",
                                  labelStyle:
                                      TextStyle(color: Color(0xFF40A9FF)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFF40A9FF),
                                          width: 1.0))),
                              keyboardType: TextInputType.name,
                            ),
                            options: [
                              Option(
                                "None",
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Example",
                                      labelStyle:
                                          TextStyle(color: Color(0xFF40A9FF)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF40A9FF),
                                              width: 1.0))),
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Option(
                                "Prefix Icon",
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Example",
                                      labelStyle:
                                          TextStyle(color: Color(0xFF40A9FF)),
                                      prefixIcon: Icon(
                                        Icons.folder_open_outlined,
                                        color: Colors.grey,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF40A9FF),
                                              width: 1.0))),
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Option(
                                "Suffix Icon",
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Example",
                                      labelStyle:
                                          TextStyle(color: Color(0xFF40A9FF)),
                                      suffixIcon: Icon(
                                        Icons.folder_open_outlined,
                                        color: Colors.grey,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF40A9FF),
                                              width: 1.0))),
                                  keyboardType: TextInputType.name,
                                ),
                              ),
                              Option(
                                "Suffix Text",
                                TextField(
                                  decoration: InputDecoration(
                                      hintText: "Example",
                                      labelStyle:
                                          TextStyle(color: Color(0xFF40A9FF)),
                                      suffixText: "Https://",
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1.0)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF40A9FF),
                                              width: 1.0))),
                                  keyboardType: TextInputType.name,
                                ),
                              )
                            ])
                      ],
                    ),
                  ))
        ],
      );
}
