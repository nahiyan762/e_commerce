import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/widget/countdown_widget.dart';
import 'package:qcoom_shopping/screen/home/widget/shop_item.dart';

class DealOfDay extends StatelessWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
          color: kGrayColor,
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Deal Of The Day', style: titleStyle),
                    Text('Hot now at up to 90% off', style: subTitleStyle)
                  ],
                ),
                Row(
                  children: [
                    CountdownWidget(),
                    SizedBox(width: 8),
                    CountdownWidget(),
                    SizedBox(width: 8),
                    CountdownWidget()
                  ],
                )
              ],
            ),
            SizedBox(height: 8),
            Container(
                height: 210.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ShopItem(),
                    ShopItem(),
                    ShopItem(),
                    ShopItem(),
                    ShopItem(),
                    ShopItem(),
                    ShopItem()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
