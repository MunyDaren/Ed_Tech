import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController = Get.put(ThemeController());
  final _formKey = GlobalKey<FormState>();

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

              // Dark Mode Toggle
              PopupMenuItem(
                value: 2,
                child: StatefulBuilder(
                  builder: (context, setState) => ListTile(
                    leading: Icon(themeController.isDarkMode
                        ? Icons.dark_mode
                        : Icons.light_mode),
                    title: Text("Dark Mode"),
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
      body: Center(
        child: Column(
          children: [
            Text('welcome'.tr),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
