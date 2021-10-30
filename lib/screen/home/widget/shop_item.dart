import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 160.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            width: 160,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(6.0), topRight: Radius.circular(6.0)),
                child: Image.asset('assets/images/demo_category.png', fit: BoxFit.fill)
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('BDT 3500.00', style: titleStyle, maxLines: 1)
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('Available', style: subTitleStyle, maxLines: 1)),
        ],
      ),
    );
  }
}
