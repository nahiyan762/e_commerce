import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/size_config.dart';
import 'package:qcoom_shopping/weight/search_weight.dart';
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
                child: SearchWeight()
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
                          child: Column(
                                children: [
                                  WebsafeSvg.asset("assets/images/category.svg", height: 40, width: 40),
                                  const SizedBox(height: 8),
                                  Text('Category', textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2)
                                ],
                              ),
                        ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              WebsafeSvg.asset("assets/images/qcoom_logo_gray.svg", height: 40, width: 40),
                              SizedBox(height: 8),
                              Text('Campaign', textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2)
                            ],
                          ),
                        ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                            children: [
                              WebsafeSvg.asset("assets/images/qcoom_logo_gray.svg", height: 40, width: 40),
                              SizedBox(height: 8),
                              Text('Big Billion Returns', textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2)
                            ],
                          ),

                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                            children: [
                              Center(child: WebsafeSvg.asset("assets/images/qcoom_logo_gray.svg", height: 40, width: 40)),
                              SizedBox(height: 8),
                              Text('Dhamaka Returns', textAlign: TextAlign.center, style: Theme.of(context).textTheme.subtitle2)
                            ],
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


