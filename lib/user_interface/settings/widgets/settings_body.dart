import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/app_style/app_theme.dart';
import 'package:pdf_reader/business_logic/shared_preferences/app_theme_store.dart';
import 'package:provider/provider.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {

    final themeSet = Provider.of<AppThemeToLocalStorage>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Dark Mode"),
            Consumer<AppThemeLogic>(
              builder: (context, switchState, child) {
                return Switch(
                    value: switchState.switchState,
                    onChanged: (value) async{
                      switchState.changeTheme(value);
                      await themeSet.addThemeToStorage(value);
                    }
                );
              }
            )
          ],
        )
      ],
    );
  }
}
