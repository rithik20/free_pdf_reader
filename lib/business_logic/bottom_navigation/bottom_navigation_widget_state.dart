import 'package:flutter/material.dart';
import 'package:pdf_reader/user_interface/home_page/home_page.dart';
import 'package:pdf_reader/user_interface/settings/settings.dart';

class BottomNavigationWidgetState extends ChangeNotifier{

  Widget screen = const HomePage();

  void navigateToSettings(){

    screen = const Settings();
    notifyListeners();
  }

  void navigateToHomePage(){

    screen = const HomePage();
    notifyListeners();
  }
}