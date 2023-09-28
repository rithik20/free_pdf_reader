import 'package:flutter/cupertino.dart';

class PdfViewState extends ChangeNotifier{

  int defaultPage = 0;

  bool nightMode = false;

  void changePageNumber(int page){

    defaultPage = page;
    notifyListeners();
  }

  void changeThemeMode(bool value){
    nightMode = value;
    notifyListeners();
  }
}