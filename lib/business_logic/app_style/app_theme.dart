import 'package:flutter/material.dart';

class AppThemeLogic extends ChangeNotifier{

  bool switchState = false;
  ThemeData themeData = ThemeData.light(useMaterial3: true);

  void changeTheme(bool value){

    if(value == true){
      switchState = true;
      themeData = ThemeData.dark(useMaterial3: true);
    }else{
      switchState = false;
      themeData = ThemeData.light(useMaterial3: true);
    }
    notifyListeners();
  }
}