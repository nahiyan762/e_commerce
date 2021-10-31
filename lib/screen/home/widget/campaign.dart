import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/widget/countdown_widget.dart';
import 'package:qcoom_shopping/screen/home/widget/shop_item.dart';

class Campaign extends StatelessWidget {
  const Campaign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                    Text('Cash On Delivery', style: titleStyle),
                    Text('Hot now at up to 90% off', style: subTitleStyle)
                  ],
                ),
                Text('See More', style: subTitleStyle)
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
