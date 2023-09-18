import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/business_logic/state_management/pdf_view_state_management/pdf_view_state.dart';
import '../../../../business_logic/pick_pdf_files/pick_pdf_files.dart';

class PDFViewToUser extends StatelessWidget {
  const PDFViewToUser({super.key});

  @override
  Widget build(BuildContext context) {
    final selectPdf = Get.put(PickPdfFilesFromDevice());
    final pdfState = Get.put(PdfViewState());
    final Completer<PDFViewController> completer =
        Completer<PDFViewController>();

    ///using the PDFView Widget is used for showing the
    ///pdf to the user
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: PDFView(
        filePath: selectPdf.pdfPath,
        enableSwipe: true,
        defaultPage: pdfState.defaultPage,
        fitPolicy: FitPolicy.BOTH,
        nightMode: pdfState.nightMode,
        onViewCreated: (PDFViewController pdfViewController) {
          completer.complete(pdfViewController);
        },
      ),
    );
  }
}
