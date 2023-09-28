import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pdf_reader/business_logic/pick_pdf_files/pick_pdf_files.dart';
import 'package:pdf_reader/user_interface/pdf_viewer/widgets/pdf_view_appBar/pdf_view_appbar.dart';
import 'package:provider/provider.dart';

class ShowPdfToUser extends StatelessWidget {
  const ShowPdfToUser({super.key});

  @override
  Widget build(BuildContext context) {
    //need the PDFViewAppBarClass dependency here
    final appBar = Provider.of<PDFViewAppBarClass>(context);
    final selectPdf = Provider.of<PickPdfFilesFromDevice>(context);
    return Scaffold(
      appBar: appBar.pdfViewAppBarClass(context),
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
      )
    );
  }
}
