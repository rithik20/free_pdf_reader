import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/app_style/app_constants.dart';

class HomePageAppBarWidget{

  //AppStyle class dependency using get
  final constant = AppConstants();

  PreferredSizeWidget appBarWidget(){

    return AppBar(
      title: constant.appTitle,
      centerTitle: false,
    );
  }
}