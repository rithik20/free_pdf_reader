import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/state_management/pdf_view_state_management/pdf_view_state.dart';
import 'package:provider/provider.dart';
import '../../../../business_logic/pick_pdf_files/pick_pdf_files.dart';

class ShowPDFToUser extends StatelessWidget {
  const ShowPDFToUser({super.key});

  @override
  Widget build(BuildContext context) {
    final selectPdf = Provider.of<PickPdfFilesFromDevice>(context);
    final pdfState = Provider.of<PdfViewState>(context);

    ///using the PDFView Widget is used for showing the
    ///pdf to the user
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: null
    );
  }
}
