import 'package:flutter/services.dart';

class PDFRenderAndroid {
  static const pdfRender = MethodChannel("pdf_render_android");

  Future<void> renderPDFAndroid() async {
    try {
      await pdfRender.invokeMethod("render_pdf");
    } on PlatformException catch (e) {
      throw e.toString();
    }
  }
}
