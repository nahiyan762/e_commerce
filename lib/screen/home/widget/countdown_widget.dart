import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CountdownWidget extends StatelessWidget {
  const CountdownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getResponsiveWidth(15, 25),
      height: getResponsiveWidth(15, 25),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(6.0)
      ),
      child: Center(
        child: Text('00',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontSize: getResponsiveWidth(28, 45)
            )
        ),
      ),
    );
  }
}
