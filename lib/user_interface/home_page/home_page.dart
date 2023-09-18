import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/appbar/app_bar.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/body/pdf_search.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/body/pick_pdf_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    //AppBarWidget class dependency using get
    final appBar = Get.put(HomePageAppBarWidget());

    return Scaffold(
      appBar: appBar.appBarWidget(),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              ///calling the PDFSearchBar Widget
              PDFSearchBar(),
              PickPdfFile(),
            ],
          ),
        ),
      ),
    );
  }
}
