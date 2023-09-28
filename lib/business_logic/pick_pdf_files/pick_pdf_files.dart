import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/body/pick_pdf_button.dart';

///this class is for user to pick pdf files from the User's Device
class PickPdfFilesFromDevice {
  File pdfPath = File("");

  ///call this method to select pdf files from the User's Device
  ///this method is called in the [PickPdfFile]
  Future<File> pickPDF() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);

    if (result != null) {
      ///if the result in not null then change the path
      ///of the pdf
      pdfPath = File(result.files.single.path!);
    }

    return pdfPath;
  }
}
