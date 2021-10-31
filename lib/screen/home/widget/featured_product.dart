import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/screen/home/widget/category_item.dart';
import 'package:qcoom_shopping/screen/home/widget/product_item.dart';
import 'package:qcoom_shopping/size_config.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Featured Product', style: titleStyle),
          SizedBox(height: 8),
          Container(
            child: StaggeredGridView.countBuilder(
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 3 : 3),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => ProductItem(),


            ),
          ),
        ],
      ),
    );
  }
}
