import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;


}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth!;
}

double getResponsiveWidth(double minWidth, double maxWidth) {
  if (SizeConfig.screenWidth! < 650) {
    return SizeConfig.screenWidth! / minWidth;
  } else {
    return SizeConfig.screenWidth! / maxWidth;
  }
}

double getResponsiveHeight(double minHeight, double maxHeight) {
  if (SizeConfig.screenHeight! < 869) {
    return SizeConfig.screenHeight! / minHeight;
  } else {
    return SizeConfig.screenHeight! / maxHeight;
  }
}