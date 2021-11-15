import 'package:flutter/material.dart';
import 'package:qcoom_shopping/size_config.dart';
import 'package:websafe_svg/websafe_svg.dart';

class OperatorItem extends StatelessWidget {
  const OperatorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                child: WebsafeSvg.asset("assets/images/qcoom_logo_green.svg", height: SizeConfig.screenWidth!/6, width: SizeConfig.screenWidth!/6)),
            SizedBox(height: 4),
            Expanded(child: Padding(padding: EdgeInsets.all(4), child: Text('Grameen phone'),))
          ],
        ),
      ),
    );
  }
}
