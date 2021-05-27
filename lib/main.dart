import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ButtonStyle primary = ButtonStyle(backgroundColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return Colors.yellow.shade50;
    return Colors.yellow.shade700;
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
            name: "Button Default",
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
                          style: TextStyle(color: Colors.black),
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
                              style: TextStyle(color: Colors.black),
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
                              style: TextStyle(color: Colors.black),
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
              style: k.options(label: "Theme", initial: this.primary, options: [
                Option("Primary", this.primary),
                Option("Secondary", this.secondary)
              ]),
              onPressed:
                  k.boolean(label: 'Enabled', initial: true) ? () {} : null,
            ),
          ),
          Story(
            name: "Button Secondary",
            section: "Button",
            builder: (_, k) => OutlinedButton(
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
                          style: TextStyle(color: Colors.black),
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
                              style: TextStyle(color: Colors.black),
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
                              style: TextStyle(color: Colors.black),
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
          Story.simple(
            name: "Navigation Bar",
            child: Scaffold(
                bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.yellow.shade700,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Beranda",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time),
                  label: "Histori",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card_outlined), label: "Dana KUR")
              ],
            )),
          ),
          Story.simple(
              name: "Top Bar",
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  title: Text("Title Goes Here"),
                  elevation: 16,
                  toolbarHeight: 80.0,
                  leading: Icon(Icons.arrow_back),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {},
                      color: Colors.black,
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {},
                      color: Colors.black,
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {},
                      color: Colors.black,
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {},
                      color: Colors.black,
                    ),
                  ],
                ),
              ))
        ],
      );
}
