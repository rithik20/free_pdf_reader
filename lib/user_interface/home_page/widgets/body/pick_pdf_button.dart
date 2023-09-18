import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/business_logic/pick_pdf_files/pick_pdf_files.dart';
import '../../../pdf_view/pdf_view.dart';

class PickPdfFile extends StatelessWidget {
  const PickPdfFile({super.key});

  @override
  Widget build(BuildContext context) {
    //need the PickPdfFilesFromDevice dependency here
    final selectPdf = Get.put(PickPdfFilesFromDevice());

    return IconButton(
        onPressed: () async {
          ///await the pickPDF() method to complete from the
          ///PickPdfFilesFromDevice()
          await selectPdf.pickPDF();
          if (!context.mounted) return;
          ///then navigate to the ShowPdfToUser Widget
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShowPdfToUser()));
        },
        icon: const Icon(Icons.add));
  }
}
