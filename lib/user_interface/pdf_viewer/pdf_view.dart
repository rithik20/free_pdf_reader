import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pdf_reader/business_logic/pick_pdf_files/pick_pdf_files.dart';
import 'package:provider/provider.dart';

class ShowPdfToUser extends StatelessWidget {
  const ShowPdfToUser({super.key});

  @override
  Widget build(BuildContext context) {
    final selectPdf = Provider.of<PickPdfFilesFromDevice>(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text(
            "${selectPdf.pdfPath.path.split(Platform.pathSeparator).last}",
            style: TextStyle(
              fontWeight: FontWeight.w400
            ),
          ),
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back));
          }),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,

          ///Showing the Pdf file to the user using PDFView Widget from the
          ///flutter_pdfview package
          child: PDFView(
            filePath: selectPdf.pdfPath.path,
            enableSwipe: true,
            swipeHorizontal: false,
            autoSpacing: false,
            pageFling: false,
          ),
        ));
  }
}
