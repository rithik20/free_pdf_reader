import 'package:flutter/material.dart';

class PDFViewAppBarClass{

  PreferredSizeWidget pdfViewAppBarClass(BuildContext context){

    return AppBar(
      leading: Builder(builder: (context){
        return IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back));
      }),
    );
  }
}