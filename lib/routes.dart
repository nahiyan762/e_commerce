import 'package:flutter/widgets.dart';
import 'package:qcoom_shopping/screen/home/home_screen.dart';
import 'screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),

};
