import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/screen/home/widget/banner_home.dart';
import 'package:qcoom_shopping/screen/home/widget/category_home.dart';
import 'package:qcoom_shopping/screen/home/widget/search_widget.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: const [
              CategoryHome(),
              BannerHome()
            ],
          ),
        ),
      ),
    );
  }
}
