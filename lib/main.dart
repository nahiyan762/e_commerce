import 'package:flutter/material.dart';
import 'package:qcoom_shopping/routes.dart';
import 'package:flutter/services.dart';
import 'package:qcoom_shopping/theme.dart';

import 'screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qcoom Shopping',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }

}
