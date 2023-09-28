import 'package:flutter/material.dart';
import 'package:pdf_reader/main.dart';

class AppThemeLogic extends ChangeNotifier{

  bool switchState = appTheme;

  void changeTheme(bool value){

    if(value == true){
      switchState = true;
    }else{
      switchState = false;
    }
    notifyListeners();
  }
}