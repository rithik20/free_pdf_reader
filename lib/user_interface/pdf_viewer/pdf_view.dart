import 'package:flutter/material.dart';
import 'package:pdf_reader/user_interface/pdf_viewer/widgets/body/show_pdf_to_user.dart';
import 'package:pdf_reader/user_interface/pdf_viewer/widgets/pdf_view_appBar/pdf_view_appbar.dart';
import 'package:provider/provider.dart';

class ShowPdfToUser extends StatelessWidget {
  const ShowPdfToUser({super.key});

  @override
  Widget build(BuildContext context) {
    //need the PDFViewAppBarClass dependency here
    final appBar = Provider.of<PDFViewAppBarClass>(context);
    return Scaffold(
      appBar: appBar.pdfViewAppBarClass(context),
      body: const ShowPDFToUser(),
    );
  }
}
