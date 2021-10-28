import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qcoom_shopping/screen/home_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';
import '../theme.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Timer(const Duration(seconds: 5), ()=> Navigator.of(context).pushReplacementNamed(HomeScreen.routeName));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WebsafeSvg.asset("assets/images/qcoom_logo_green.svg"),
              SizedBox(height: 32),
              Text(welcome_in_qcoom, style: textTheme().headline1)
            ],
          ),
        ),
      ),
    );
  }
}
