import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: primaryColor,
    focusColor: primaryColor,
    accentColor: secondaryColor,
    scaffoldBackgroundColor: canvasColor,
    fontFamily: "Lato",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: textColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(fontSize: 30, fontFamily: 'Lato', color: primaryColor),
    headline2: TextStyle(fontSize: 20, fontFamily: 'Lato', color: kTitleTextColor),
    subtitle1: TextStyle(fontSize: 15, fontFamily: 'Lato', color: primaryColor),
    subtitle2: TextStyle(fontSize: 15, fontFamily: 'Lato', color:kTitleTextColor),
  );
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.amber,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: canvasColor,
    elevation: 0,
    iconTheme: IconThemeData(color: primaryColor),
  );
}