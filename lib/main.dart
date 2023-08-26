import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_app/screen/controller/themes.dart';
import 'package:theme_app/screen/splace_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  bool isDarkMode = prefs.getBool("isDarkMode") ?? false;
  debugPrint("Mode : $isDarkMode");
  runApp(MyApp(isMode: isDarkMode));
}

class MyApp extends StatelessWidget {
  final bool isMode;
  const MyApp({super.key, required this.isMode});

  @override
  Widget build(BuildContext context) {
    debugPrint("Mode is: $isMode");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isMode ? ThemeMode.dark : ThemeMode.light,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      home: const SplaceScreen(),
    );
  }
}
