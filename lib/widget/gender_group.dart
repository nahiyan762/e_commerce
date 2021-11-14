import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';

class GenderGroup extends StatefulWidget {
  final double fontSize;
  const GenderGroup(this.fontSize, {Key? key}) : super(key: key);

  @override
  _GenderGroupState createState() => _GenderGroupState(fontSize);
}

class _GenderGroupState extends State<GenderGroup> {
  final double fontSize;
  String radioButtonItem = 'Male';
  int id = 1;

  _GenderGroupState(this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 1,
              groupValue: id,
              activeColor: primaryColor,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Male';
                  id = 1;
                });
              },
            ),
            Text('Male', style: TextStyle(fontSize: fontSize)),
            Radio(
              value: 2,
              groupValue: id,
              activeColor: primaryColor,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Female';
                  id = 2;
                });
              },
            ),
            Text('Female', style: TextStyle(fontSize: fontSize)),
            Radio(
              value: 3,
              groupValue: id,
              activeColor: primaryColor,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Other';
                  id = 3;
                });
              },
            ),
            Text('Other', style: TextStyle(fontSize: fontSize)),
          ],
        ),
      ],
    );
  }
}
