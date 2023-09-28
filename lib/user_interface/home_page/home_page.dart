import 'package:flutter/material.dart';
import 'package:pdf_reader/user_interface/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/body/pick_pdf_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Free PDF Reader"),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        width: MediaQuery.of(context).size.width,
        child: const Center(child: PickPdfFile()),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
