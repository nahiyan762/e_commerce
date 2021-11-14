import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/model/account_item_entity.dart';
import 'package:qcoom_shopping/screen/signIn/sign_in_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'account_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var item = <int, AccountItemEntity>{
      0: AccountItemEntity(id: '1', name: 'Profile', icon: WebsafeSvg.asset("assets/icons/ic_profile.svg"), destination: SignInScreen.routeName),
      1: AccountItemEntity(id: '2', name: 'Shipping Address', icon: WebsafeSvg.asset("assets/icons/ic_location.svg"), destination: SignInScreen.routeName),
      2: AccountItemEntity(id: '3', name: 'Email Address', icon: WebsafeSvg.asset("assets/icons/ic_message.svg"), destination: SignInScreen.routeName),
      3: AccountItemEntity(id: '4', name: 'Language', icon: WebsafeSvg.asset("assets/icons/ic_language.svg"), destination: SignInScreen.routeName),
      4: AccountItemEntity(id: '5', name: 'Version', icon: WebsafeSvg.asset("assets/icons/ic_language.svg"), destination: SignInScreen.routeName),
      5: AccountItemEntity(id: '6', name: 'Logout', icon: WebsafeSvg.asset("assets/icons/ic_logout.svg"), destination: SignInScreen.routeName),
    };
    
    return ScreenUtilInit(
        builder: () => Scaffold(
              appBar: AppBar(
                centerTitle: false,
                titleSpacing: 0.0,
                title: Padding(
                    padding: EdgeInsets.only(left: 25.w),
                    child: const Text(
                      'Account',
                      style: TextStyle(
                          color: kTitleTextColor, fontWeight: FontWeight.bold),
                    )
                ),
              ),
              body: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: item.length,
                    itemBuilder: (context, index) {
                      return AccountItem(item[index]!.name, item[index]!.icon, item[index]!.id, item[index]!.destination);
                    },
                ),
              ),
            )
    );
  }
}
