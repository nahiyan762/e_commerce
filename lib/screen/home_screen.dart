import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/size_config.dart';
import 'package:qcoom_shopping/widget/category_widget.dart';
import 'package:qcoom_shopping/widget/search_widget.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/category.svg", "text": "Category"},
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Campaign"},
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Big Billion Return"},
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Gift Card"},
      {"icon": "assets/images/qcoom_logo_gray.svg", "text": "Dhamaka Returns"},
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          const Expanded(
            child: Padding(
                padding: EdgeInsets.only(right: 16, left: 16),
                child: SearchWidget()),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: WebsafeSvg.asset("assets/icons/ic_bell.svg",
                  color: primaryColor)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        categories.length,
                        (index) => CategoryWidget(
                            icon: categories[index]["icon"],
                            text: categories[index]["text"],
                            press: () {}
                            )
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
