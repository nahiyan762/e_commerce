import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/sign_in_screen';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: WebsafeSvg.asset("assets/icons/ic_close.svg"),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 170.h),
                    WebsafeSvg.asset("assets/images/qcoom_logo_green.svg", height: 80.h, width: 80.h),
                    SizedBox(height: 21.h),
                    Text("Sign In Account",
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF34A852)
                      )
                    ),
                    SizedBox(height: 56.h),
                  ],
                ),
              ),
            ),
        ),
        designSize: const Size(375, 812),
    );
  }
}
