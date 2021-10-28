import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../size_config.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/category.svg", "text": "Category"},
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Campaign"},
      {
        "icon": "assets/images/qcoom_logo_gray.svg",
        "text": "Big Billion Return"
      },
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Gift Card"},
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Dhamaka Returns"},
    ];

    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              categories.length,
              (index) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              WebsafeSvg.asset(categories[0]["icon"],
                                  height: 40, width: 40),
                              const SizedBox(height: 8),
                              Text(categories[0]["text"],
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle2)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))),
    );
  }
}
