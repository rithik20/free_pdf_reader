import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/bottom_navigation/bottom_navigation_current_index.dart';
import 'package:provider/provider.dart';
import '../../business_logic/bottom_navigation/bottom_navigation_widget_state.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {

    final currentIndexNumber = Provider.of<BottomNavigationIndexNumber>(context);
    final navigation = Provider.of<BottomNavigationWidgetState>(context);

    return Consumer<BottomNavigationIndexNumber>(
      builder: (context, indexNumber, child) {
        return BottomNavigationBar(
            selectedItemColor: Colors.indigo,

            currentIndex: currentIndexNumber.indexNumber,
            items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "PDF"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
          onTap: (index){
              indexNumber.changeIndex(index);

              if(currentIndexNumber.indexNumber == 0){

                navigation.navigateToHomePage();
              }else{
                navigation.navigateToSettings();
              }
          },
        );
      }
    );
  }
}
