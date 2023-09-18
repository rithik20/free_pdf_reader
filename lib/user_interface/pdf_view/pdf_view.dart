import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/user_interface/pdf_view/widgets/body/pdf_view_to_user.dart';
import 'package:pdf_reader/user_interface/pdf_view/widgets/pdf_view_appBar/pdf_view_appbar.dart';

class ShowPdfToUser extends StatelessWidget {
  const ShowPdfToUser({super.key});

  @override
  Widget build(BuildContext context) {
    //need the PDFViewAppBarClass dependency here
    final appBar = Get.put(PDFViewAppBarClass());
    return Scaffold(
      appBar: appBar.pdfViewAppBarClass(context),
      body: const PDFViewToUser(),
    );
  }
}
