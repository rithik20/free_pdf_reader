import 'package:flutter/material.dart';
import 'package:pdf_reader/user_interface/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:pdf_reader/user_interface/settings/widgets/settings_body.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const SettingsBody()),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
