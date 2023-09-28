import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;

class AppThemeToLocalStorage {
  Future<void> addThemeToStorage(bool value) async {
    await sharedPreferences.setBool("theme", value);
  }
}
