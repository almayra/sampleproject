import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../../typography.dart';
// import '../../colors.dart';

class ButtonSecondary extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) => Storybook(children: [
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
                                  style: BodyText2Bold,
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
                                  style: BodyText2Bold,
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
                                        style: BodyText2Bold,
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
                  style: this.secondary,
                  onPressed:
                      k.boolean(label: 'Enabled', initial: true) ? () {} : null,
                )),
      ]);
}
