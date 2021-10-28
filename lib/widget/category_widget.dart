import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            WebsafeSvg.asset(icon, height: 40, width: 40),
            const SizedBox(height: 8),
            Text(text, textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2)
          ],
        ),
      ),
    );
  }
}
