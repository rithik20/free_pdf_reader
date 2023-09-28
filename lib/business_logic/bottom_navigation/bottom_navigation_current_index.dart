import 'package:flutter/material.dart';

class BottomNavigationIndexNumber extends ChangeNotifier{

  int indexNumber = 0;

  void changeIndex(int index){
    indexNumber = index;
    notifyListeners();
  }
}