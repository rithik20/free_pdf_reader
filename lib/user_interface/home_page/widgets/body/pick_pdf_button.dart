import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/pick_pdf_files/pick_pdf_files.dart';
import 'package:provider/provider.dart';
import '../../../pdf_viewer/pdf_view.dart';

class PickPdfFile extends StatelessWidget {
  const PickPdfFile({super.key});

  @override
  Widget build(BuildContext context) {
    //need the PickPdfFilesFromDevice dependency here
    final selectPdf = Provider.of<PickPdfFilesFromDevice>(context);

    return MaterialButton(
        color: Colors.blueAccent,
        onPressed: () async {
          ///await the pickPDF() method to complete from the
          ///PickPdfFilesFromDevice()
          await selectPdf.pickPDF();

          if (!context.mounted) return;

          ///then navigate to the ShowPdfToUser Widget
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShowPdfToUser()));
        },
        child: const Text(
          "Select PDF File",
          style: TextStyle(color: Colors.white),
        ));
  }
}
