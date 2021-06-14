import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class Spinner extends StatefulWidget {
  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
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
  Widget build(BuildContext context) => Storybook(
        children: [
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
        ],
      );
}
