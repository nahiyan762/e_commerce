import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';

class RememberPassword extends StatefulWidget {
  final double fontSize;
  const RememberPassword(this.fontSize, {Key? key}) : super(key: key);

  @override
  _RememberPasswordState createState() => _RememberPasswordState(fontSize);
}

class _RememberPasswordState extends State<RememberPassword> {
  bool isChecked = false;
  final double fontSize;
  _RememberPasswordState(this.fontSize);

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
          Text('Remember Password', style: TextStyle(color: kTitleTextColor, fontWeight: FontWeight.w400, fontSize: fontSize),)
        ],
    );
  }
}
