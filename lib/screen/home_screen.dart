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
                child: SearchWidget()
            )
            ,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: CategoryWidget(
                            icon: categories[0]["icon"],
                            text: categories[0]["text"],
                            press: () {}
                          ),
                        ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: CategoryWidget(
                              icon: categories[1]["icon"],
                              text: categories[1]["text"],
                              press: () {}
                          ),
                        ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CategoryWidget(
                            icon: categories[2]["icon"],
                            text: categories[2]["text"],
                            press: () {}
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CategoryWidget(
                            icon: categories[3]["icon"],
                            text: categories[3]["text"],
                            press: () {}
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: CategoryWidget(
                            icon: categories[4]["icon"],
                            text: categories[4]["text"],
                            press: () {}
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


