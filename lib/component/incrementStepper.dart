import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../colors.dart';

class IncrementStepper extends StatefulWidget {
  @override
  _IncrementStepperState createState() => _IncrementStepperState();
}

class _IncrementStepperState extends State<IncrementStepper> {
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
              name: "Increment Stepper",
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: increment(),
                    style: this.stepperButton,
                    child: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        color: gray020),
                    padding: EdgeInsets.fromLTRB(21, 4, 21, 4),
                    child: Text(
                      "$_counter",
                      style: TextStyle(
                          fontFamily: "Noto Sans",
                          fontSize: 13.0,
                          color: gray100,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  ElevatedButton(
                    onPressed: decrement(),
                    style: this.stepperButton,
                    child: Icon(
                      Icons.remove,
                      size: 20,
                    ),
                  ),
                ],
              )),
        ],
      );
}
