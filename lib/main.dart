import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/app_style/app_theme.dart';
import 'package:pdf_reader/business_logic/bottom_navigation/bottom_navigation_widget_state.dart';
import 'package:pdf_reader/business_logic/permission_handler/storage_permission_handler.dart';
import 'package:pdf_reader/business_logic/pick_pdf_files/pick_pdf_files.dart';
import 'package:pdf_reader/business_logic/shared_preferences/app_theme_store.dart';
import 'package:pdf_reader/business_logic/state_management/pdf_view_state_management/pdf_view_state.dart';
import 'package:pdf_reader/user_interface/storage_permission_page/storage_permission_page.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'business_logic/bottom_navigation/bottom_navigation_current_index.dart';

///This late variable will assigned from the SharedPreferences Storage
late bool appTheme;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sharedPreferences = await SharedPreferences.getInstance();

  try {
    appTheme = sharedPreferences.getBool("theme")!;
  } catch (_) {
    appTheme = false;
  }
  storagePermissionStatus = await Permission.storage.status;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => PickPdfFilesFromDevice()),
        Provider(create: (context) => AppThemeToLocalStorage()),
        ChangeNotifierProvider(create: (context) => PdfViewState()),
        ChangeNotifierProvider(create: (context) => CheckStoragePermission()),
        ChangeNotifierProvider(
            create: (context) => BottomNavigationIndexNumber()),
        ChangeNotifierProvider(
            create: (context) => BottomNavigationWidgetState()),
        ChangeNotifierProvider(create: (context) => AppThemeLogic()),
      ],
      child: Consumer<AppThemeLogic>(builder: (context, appTheme, child) {
        return Consumer<BottomNavigationWidgetState>(
            builder: (context, screen, child) {
          return Consumer<CheckStoragePermission>(
              builder: (context, storage, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: appTheme.switchState
                  ? ThemeData.dark(useMaterial3: true)
                  : ThemeData.light(useMaterial3: true),
              home: storage.permissionStatus == PermissionStatus.granted
                  ? screen.screen
                  : const StoragePermissionPage(),
            );
          });
        });
      }),
    );
  }
}
