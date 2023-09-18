import 'package:get/get.dart';

class PdfViewState extends GetxController{

  int defaultPage = 0;

  bool nightMode = false;

  void changePageNumber(int page){

    defaultPage = page;
    update();
  }

  void changeThemeMode(bool value){
    nightMode = value;
    update();
  }
}