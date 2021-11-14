import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/widget/button_gradient.dart';
import 'package:qcoom_shopping/widget/input_password_field.dart';
import 'package:qcoom_shopping/widget/input_text_field.dart';
import 'package:qcoom_shopping/widget/operator_drop_down.dart';
import 'package:qcoom_shopping/widget/remember_password.dart';
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    WebsafeSvg.asset("assets/images/qcoom_logo_green.svg", height: 80.h, width: 80.h),
                    SizedBox(height: 21.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("SIGN IN",
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF34A852)
                            )
                        ),
                        SizedBox(width: 5.w),
                        Text("ACCOUNT",
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF34A852)
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 56.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          const OperatorDropDown(),
                          SizedBox(width: 8.w),
                          const Expanded(
                            child: InputTextField('Phone Number')
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: InputPasswordField()
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          Spacer(),
                          RememberPassword(14.sp)
                        ],
                      ),
                    ),
                    SizedBox(height: 33.h),
                    ButtonGradient(204.w, 43.h, 14.sp),
                    SizedBox(height: 60.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500)
                        ),
                        SizedBox(width: 4.w),
                        Text('Sign up',
                            style: TextStyle(
                                color: primaryColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text('Lost password',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
        ),
        designSize: const Size(375, 812),
    );
  }
}
