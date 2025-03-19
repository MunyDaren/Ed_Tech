import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';


  bool get isDarkMode => _box.read(_key) ?? false;


  void toggleTheme() {
    bool newMode = !isDarkMode;
    Get.changeThemeMode(newMode ? ThemeMode.dark : ThemeMode.light);
    _box.write(_key, newMode);
  }
}
