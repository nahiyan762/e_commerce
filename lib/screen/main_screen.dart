import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/screen/account/account_screen.dart';
import 'package:qcoom_shopping/screen/cart/cart_screen.dart';
import 'package:qcoom_shopping/screen/home/home_screen.dart';
import 'package:qcoom_shopping/screen/orders/order_screen.dart';
import 'package:qcoom_shopping/screen/wishlist/wishlist_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main_screen';

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var page = 0;
  final pages = [WishListScreen(), OrderScreen(), HomeScreen(), CartScreen(), AccountScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        color: canvasColor,
        backgroundColor: Colors.white,
        buttonBackgroundColor: primaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
         setState(() {
           page = index;
         });
        },
        items: [
          Icon(Icons.favorite_border),
          Icon(Icons.add),
          Icon(Icons.home_outlined),
          Icon(Icons.favorite_border),
          Icon(Icons.add),
        ],
      ),
      body: pages[page],
    );
  }
}
