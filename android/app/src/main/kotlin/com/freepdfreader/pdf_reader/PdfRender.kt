package com.freepdfreader.pdf_reader
import android.annotation.TargetApi
import android.graphics.pdf.PdfRenderer
import android.os.Build

//class PdfRender {
//
//    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
//    public fun readPages(){
//
//        val pdfRenderer = PdfRenderer(getSeekableFileDescriptor())
//
//        var pageCount: Int = pdfRenderer.pageCount
//
//        for (i in 0..pageCount){
//            var page: PdfRenderer.Page = pdfRenderer.openPage(i)
//            page.render(mBitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
//            page.close()
//        }
//
//        pdfRenderer.close()
//    }
//}