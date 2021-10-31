import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0)
                ),
                child: Image.asset('assets/images/demo_category.png',
                    fit: BoxFit.fill)
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('Mobile, Laptop & Desktop',
                    style: TextStyle(
                    fontSize: getResponsiveWidth(35, 45),
                    color: kTitleTextColor,
                    height: 1.5
                ),
                  textAlign: TextAlign.center,
                )
            ),
          ),
        ],
      ),
    );
  }
}
