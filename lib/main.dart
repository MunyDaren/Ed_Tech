import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'lang_service.dart'; 
import 'package:get_storage/get_storage.dart';
import 'homescreen.dart'; 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LangService(), 
      locale: Locale('en'), 
      fallbackLocale: Locale('en'), 
      theme: ThemeData.light(), 
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, 
      home: HomeScreen(),
    );
  }
}
