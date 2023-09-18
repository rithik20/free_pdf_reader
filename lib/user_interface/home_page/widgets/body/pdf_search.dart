import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/user_interface/home_page/home_page.dart';
import '../../../../business_logic/controllers/text_editing_controllers/text_editing_controllers.dart';

///use this Widget to search for PDF Files in Device
///this widget is called in the [HomePage] class's body
class PDFSearchBar extends StatelessWidget {
  const PDFSearchBar({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = Get.put(TextEditingControllers());

    ///returning a SearchBar for Searching PDF files in the lists
    ///Below
    return SearchBar(
      controller: textController.pdfSearch,
      hintText: "Type Here to Search ",
      trailing: [
        IconButton(
            onPressed: (){},
            icon: const Icon(CupertinoIcons.search)),
      ],
    );
  }
}
