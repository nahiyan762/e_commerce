import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/screen/account/account_screen.dart';
import 'package:qcoom_shopping/screen/cart/cart_screen.dart';
import 'package:qcoom_shopping/screen/home/home_screen.dart';
import 'package:qcoom_shopping/screen/orders/order_screen.dart';
import 'package:qcoom_shopping/screen/wishlist/wishlist_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main_screen';

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var page = 2;
  final pages = [
    const WishListScreen(),
    const OrderScreen(),
    const HomeScreen(),
    const CartScreen(),
    const AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => Scaffold(
              body: pages[page],
              bottomNavigationBar: BottomNavigationBar(
                onTap: (newIndex) => setState(() => page = newIndex),
                type: BottomNavigationBarType.fixed,
                selectedItemColor: kTitleTextColor,
                unselectedItemColor: kTitleTextColor,
                currentIndex: page,
                items: [
                  BottomNavigationBarItem(
                    icon: WebsafeSvg.asset("assets/icons/ic_wishlist.svg"),
                    label: 'Wishlist',
                  ),
                  BottomNavigationBarItem(
                    icon: WebsafeSvg.asset("assets/icons/ic_order.svg"),
                    label: 'Order',
                  ),
                  BottomNavigationBarItem(
                    icon: WebsafeSvg.asset("assets/images/qcoom_logo_green.svg",
                        width: 45.w, height: 45.h),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: WebsafeSvg.asset("assets/icons/ic_cart.svg"),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: WebsafeSvg.asset("assets/icons/ic_more.svg"),
                    label: 'Account',
                  ),
                ],
              ),
            )
    );
  }
}
