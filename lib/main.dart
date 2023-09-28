import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/app_style/app_theme.dart';
import 'package:pdf_reader/business_logic/bottom_navigation/bottom_navigation_widget_state.dart';
import 'package:pdf_reader/business_logic/pick_pdf_files/pick_pdf_files.dart';
import 'package:pdf_reader/business_logic/state_management/pdf_view_state_management/pdf_view_state.dart';
import 'package:pdf_reader/user_interface/home_page/widgets/appbar/app_bar.dart';
import 'package:pdf_reader/user_interface/pdf_viewer/widgets/pdf_view_appBar/pdf_view_appbar.dart';
import 'package:provider/provider.dart';
import 'business_logic/bottom_navigation/bottom_navigation_current_index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => HomePageAppBarWidget()),
        Provider(create: (context) => HomePageAppBarWidget()),
        Provider(create: (context) => PDFViewAppBarClass()),
        Provider(create: (context) => PickPdfFilesFromDevice()),
        ChangeNotifierProvider(create: (context) => PdfViewState()),
        ChangeNotifierProvider(
            create: (context) => BottomNavigationIndexNumber()),
        ChangeNotifierProvider(
            create: (context) => BottomNavigationWidgetState()),
        ChangeNotifierProvider(create: (context) => AppThemeLogic()),
      ],
      child: Consumer<AppThemeLogic>(builder: (context, appTheme, child) {
        return Consumer<BottomNavigationWidgetState>(
            builder: (context, screen, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appTheme.themeData,
            home: screen.screen,
          );
        });
      }),
    );
  }
}
