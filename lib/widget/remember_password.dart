import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';

class RememberPassword extends StatefulWidget {
  final double fontSize;
  final String title;
  const RememberPassword(this.fontSize, this.title, {Key? key}) : super(key: key);

  @override
  _RememberPasswordState createState() => _RememberPasswordState(fontSize, title);
}

class _RememberPasswordState extends State<RememberPassword> {
  bool isChecked = false;
  final double fontSize;
  final String title;
  _RememberPasswordState(this.fontSize, this.title);

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
      mainAxisAlignment: MainAxisAlignment.end,
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
          Text(title, style: TextStyle(color: kTitleTextColor, fontWeight: FontWeight.w400, fontSize: fontSize),)
        ],
    );
  }
}
