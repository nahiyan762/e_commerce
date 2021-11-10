import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:qcoom_shopping/routes.dart';
import 'package:flutter/services.dart';
import 'package:qcoom_shopping/theme.dart';
import 'provider/product_provider.dart';
import 'provider/toggle_password.dart';
import 'screen/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => TogglePassword()),
      ChangeNotifierProvider(create: (_) => ProductProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'QCOOM',
        theme: theme(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
      ),
        designSize: const Size(375, 812),
    );
  }

}
