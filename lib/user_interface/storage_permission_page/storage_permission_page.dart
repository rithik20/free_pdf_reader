import 'package:flutter/material.dart';
import 'package:pdf_reader/business_logic/permission_handler/storage_permission_handler.dart';
import 'package:pdf_reader/user_interface/home_page/home_page.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class StoragePermissionPage extends StatelessWidget {
  const StoragePermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final askPermission = Provider.of<CheckStoragePermission>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("We need Your Storage Permission to Select PDF Files"),
            MaterialButton(
              color: Colors.blueAccent,

              ///When pressed this button check that the permission is granted or not
              onPressed: () async {
                if (askPermission.permissionStatus !=
                    PermissionStatus.granted) {
                  await askPermission.askPermission();
                } else if (askPermission.permissionStatus ==
                    PermissionStatus.granted) {
                  ///if granted then navigate to the HomePage
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }
              },
              child: const Text(
                "Grand Permission",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
