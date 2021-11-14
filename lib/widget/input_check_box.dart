import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';

class InputCheckBox extends StatefulWidget {
  final double fontSize;
  final String title;
  const InputCheckBox(this.fontSize, this.title, {Key? key}) : super(key: key);

  @override
  _InputCheckBoxState createState() => _InputCheckBoxState(fontSize, title);
}

class _InputCheckBoxState extends State<InputCheckBox> {
  bool isChecked = false;
  final double fontSize;
  final String title;
  _InputCheckBoxState(this.fontSize, this.title);

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return primaryColor;
      }
      return primaryColor;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Expanded(child: Text(title, style: TextStyle(color: kTitleTextColor, fontWeight: FontWeight.w400, fontSize: fontSize),))
        ],
    );
  }
}
