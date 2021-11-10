import 'package:flutter/material.dart';

class TogglePassword with ChangeNotifier{
  bool isShowPassword = false;

  bool get togglePassword => isShowPassword;

  void setTogglePassword() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

}