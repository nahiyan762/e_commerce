import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/screen/home/widget/banner_home.dart';
import 'package:qcoom_shopping/screen/home/widget/category_home.dart';
import 'package:qcoom_shopping/screen/home/widget/countdown_widget.dart';
import 'package:qcoom_shopping/screen/home/widget/search_widget.dart';
import 'package:qcoom_shopping/size_config.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

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
              const CategoryHome(),
              const BannerHome(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: const BoxDecoration(
                  color: kGrayColor,
                  borderRadius: BorderRadius.all(Radius.circular(6.0))
                ),
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
                          height: 200.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(width: 160.0, color: Colors.blue,),
                              Container(width: 160.0, color: Colors.green,),
                              Container(width: 160.0, color: Colors.cyan,),
                              Container(width: 160.0, color: Colors.black,),
                              Container(width: 160.0, color: Colors.blue,),
                              Container(width: 160.0, color: Colors.green,),
                              Container(width: 160.0, color: Colors.cyan,),
                            ],
                          )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
