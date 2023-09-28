import 'package:flutter/material.dart';
import 'package:pdf_reader/user_interface/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/appbar/app_bar.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/body/pick_pdf_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    //AppBarWidget class dependency using get
    final appBar = Provider.of<HomePageAppBarWidget>(context);

    return Scaffold(
      appBar: appBar.appBarWidget(),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width,
        child: const Center(child: PickPdfFile()),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
