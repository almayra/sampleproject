import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../../typography.dart';

class ButtonOutlined extends StatelessWidget {
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
  Widget build(BuildContext context) => Storybook(children: [
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.folder_open_outlined,
                            color: Colors.black,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          )
                        ],
                      )),
                  Option(
                      "With Append",
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Button",
                            style: BodyText2Regular,
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                          )
                        ],
                      )),
                  Option(
                      "Both",
                      Row(
                        mainAxisSize: MainAxisSize.min,
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
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                          )
                        ],
                      )),
                ]),
            style: this.outline,
            onPressed:
                k.boolean(label: 'Enabled', initial: true) ? () {} : null,
          ),
        ),
      ]);
}
