import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/app_style/app_theme.dart';
import 'package:pdf_reader/business_logic/shared_preferences/app_theme_store.dart';
import 'package:pdf_reader/user_interface/app_about_page/app_about_page.dart';
import 'package:provider/provider.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final themeSet = Provider.of<AppThemeToLocalStorage>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Dark Mode"),
              Consumer<AppThemeLogic>(builder: (context, switchState, child) {
                return Switch(
                  activeColor: Colors.white,
                    value: switchState.switchState,
                    onChanged: (value) async {
                      switchState.changeTheme(value);
                      await themeSet.addThemeToStorage(value);
                    });
              })
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(onPressed: () {
            ///when the user presses this button then navigate to the
            ///About Page
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
            const AboutPage()));
          }, icon: const Text("About")),
        )
      ],
    );
  }
}
