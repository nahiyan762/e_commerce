import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';

class ButtonGradient extends StatelessWidget {
  final double width;
  final double height;
  final double fontSize;
  const ButtonGradient(this.width, this.height, this.fontSize, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          color: Colors.white,
          border: Border.all(width: 1, color: primaryColor),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [secondaryColor, primaryColor],
          )
      ),
      child: Center(
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize: fontSize))
      ),
    );
  }
}
