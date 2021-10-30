import 'package:flutter/material.dart';
import 'size_config.dart';

const primaryColor = Color(0xFF34A852);
const secondaryColor = Color(0xFF94C840);
const canvasColor =  Color(0xFFFAFAFA);
const textColor = Color(0xFF34A852);
const textColorSelected = Color(0xFF34A852);
const textColorUnSelected = Color(0xFF000000);
const kBgLightColor = Color(0xFFF2F4FC);
const kBgDarkColor = Color(0xFFEBEDFA);
const kBadgeColor = Color(0xFFEE376E);
const kGrayColor = Color(0xFFF4F4F4);
const kTitleTextColor = Color(0xFF3A494E);
const kDefaultPadding = 20.0;
const purpleColor = "#F0105B";
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: kTitleTextColor,
);

final titleStyle = TextStyle(
  fontSize: getResponsiveWidth(25, 45),
  fontWeight: FontWeight.bold,
  color: kTitleTextColor,
  height: 1.5
);

final subTitleStyle = TextStyle(
  fontSize: getResponsiveWidth(35, 55),
  color: kTitleTextColor,
  height: 1.5
);

const defaultDuration = Duration(milliseconds: 250);

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: textColor),
  );
}

final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

const welcome_in_qcoom = "Welcome in QCOOM";
const examTestString = "It is encouraged to regularly attend the exams to gain point.It is encouraged to regularly attend the exams to gain point.It is encouraged to regularly attend the exams to gain point.";
const performanceString = "An overview of compiled user performance. Comes in handy for application user to performance.An overview of compiled user performance. Comes in handy for application user to performance.";
