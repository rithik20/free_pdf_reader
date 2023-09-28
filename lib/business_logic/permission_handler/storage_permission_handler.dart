import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

late PermissionStatus storagePermissionStatus;

class CheckStoragePermission extends ChangeNotifier {
  PermissionStatus permissionStatus = storagePermissionStatus;

  ///This [askPermission] method will ask Storage Permission
  Future<void> askPermission() async {
    permissionStatus = await Permission.storage.status;

    if (permissionStatus == PermissionStatus.denied) {
      await Permission.storage.request();
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      await openDeviceSettings();
    } else {
      permissionStatus = PermissionStatus.granted;
    }

    notifyListeners();
  }

  ///This will open user's Settings
  Future<bool> openDeviceSettings() async {
    return await openAppSettings();
  }
}
