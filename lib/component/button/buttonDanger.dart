import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../../typography.dart';
import '../../colors.dart';

class ButtonDanger extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) => Storybook(children: [
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
                              mainAxisSize: MainAxisSize.min,
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
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Button",
                                  style: BodyText2Regular,
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
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
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ]),
                  style: this.danger,
                  onPressed:
                      k.boolean(label: 'Enabled', initial: true) ? () {} : null,
                )),
      ]);
}
