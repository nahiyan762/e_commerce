import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/screen/home/widget/category_item.dart';
import 'package:qcoom_shopping/screen/home/widget/shop_item.dart';
import 'package:qcoom_shopping/size_config.dart';

class BrowsByCategory extends StatelessWidget {
  const BrowsByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Brows By Category', style: titleStyle),
              Spacer(),
              Text('See More', style: subTitleStyle)
            ],
          ),
          SizedBox(height: 8),
          Container(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: SizeConfig.isMobile(context) ? 3 : 4,
                childAspectRatio: 50 / 60,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: SizeConfig.isMobile(context) ? 6 : 8,
              itemBuilder: (context, index) {
                return CategoryItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
