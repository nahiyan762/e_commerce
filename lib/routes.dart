import 'package:flutter/widgets.dart';
import 'package:qcoom_shopping/screen/home/home_screen.dart';
import 'package:qcoom_shopping/screen/main_screen.dart';
import 'package:qcoom_shopping/screen/signIn/sign_in_screen.dart';
import 'screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};
