import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'All Screen/login.dart';
import 'theme_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
        actions: [
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              // change language option
              PopupMenuItem(
                value: 1,
                child: ListTile(
                  leading: Icon(Icons.language),
                  title: Text('change_lang'.tr),
                  onTap: () {
                    var locale = Get.locale == Locale('en')
                        ? Locale('km')
                        : Locale('en');
                    Get.updateLocale(locale);
                    Navigator.pop(context);
                  },
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: StatefulBuilder(
                  builder: (context, setState) => ListTile(
                    leading: Icon(themeController.isDarkMode
                        ? Icons.light_mode
                        : Icons.dark_mode),
                    title: Text(themeController.isDarkMode
                        ? "Dark Mode"
                        : "Light Mode"),
                    trailing: Switch(
                      value: themeController.isDarkMode,
                      onChanged: (value) {
                        themeController.toggleTheme();
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: LoginPage(),
    );
  }
}
