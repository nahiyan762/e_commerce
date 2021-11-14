import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qcoom_shopping/constants.dart';
import 'package:qcoom_shopping/widget/button_gradient.dart';
import 'package:qcoom_shopping/widget/gender_group.dart';
import 'package:qcoom_shopping/widget/input_check_box.dart';
import 'package:qcoom_shopping/widget/input_password_field.dart';
import 'package:qcoom_shopping/widget/input_text_field.dart';
import 'package:qcoom_shopping/widget/operator_drop_down.dart';
import 'package:qcoom_shopping/widget/remember_password.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign_up_screen';

  const SignUpScreen({Key? key}) : super(key: key);

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
                WebsafeSvg.asset("assets/images/qcoom_logo_green.svg",
                    height: 80.h, width: 80.h),
                SizedBox(height: 21.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SIGN UP",
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF34A852))),
                    SizedBox(width: 5.w),
                    Text("ACCOUNT",
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF34A852)))
                  ],
                ),
                SizedBox(height: 26.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      const OperatorDropDown(),
                      SizedBox(width: 8.w),
                      const Expanded(child: InputTextField('Phone Number'))
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      Expanded(child: InputTextField('First name')),
                      SizedBox(width: 10.w),
                      Expanded(child: InputTextField('Last name')),
                    ],
                  ),
                ),
                GenderGroup(14.sp),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: InputTextField('Email address')
                ),
                SizedBox(height: 10.h),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const InputPasswordField()
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SizedBox(
                    height: 45.h,
                    child: Row(
                      children: [
                        const Expanded(flex: 2,child: SizedBox(height: double.infinity, child: InputTextField('Captcha'))),
                        SizedBox(width: 10.w),
                        Expanded(flex: 1,child: SizedBox(height: 45.h, child: Image.asset('assets/images/captcha.png', height: 45.h))),
                        SizedBox(width: 10.w),
                        Expanded(
                          flex: 1,
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(0.0)),
                              color: Colors.white,
                              border: Border.all(width: 1, color: primaryColor),
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [secondaryColor, primaryColor],
                              )),
                              child: Center(
                              child: WebsafeSvg.asset("assets/icons/ic_refresh.svg", width: 24.w, height: 24.h)),
                          )
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(right: 16.w, left: 4.w),
                  child: InputCheckBox(14.sp, "I agree to the Privacy Policy and Terms & Condition of E-Commerce")),
                SizedBox(height: 30.h),
                ButtonGradient(204.w, 43.h, 14.sp, 'Sign Up'),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text('Do have an account?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500)
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Text('Sign in',
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
