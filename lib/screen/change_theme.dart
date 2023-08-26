import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/screen/controller/theme_controller.dart';

class ChangeThemeScreen extends StatefulWidget {
  const ChangeThemeScreen({super.key});
  @override
  State<ChangeThemeScreen> createState() => _ChangeThemeScreenState();
}

class _ChangeThemeScreenState extends State<ChangeThemeScreen> {
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: themeController.isDarkMode.value
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                        color: themeController.isDarkMode.value
                            ? Colors.white
                            : Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: themeController.isDarkMode.value,
                    onChanged: (value) {
                      themeController.changeThemeHandler(value);
                        Get.changeTheme(value ? ThemeData.dark():ThemeData.light());
                      Get.changeThemeMode(
                          value ? ThemeMode.dark : ThemeMode.light);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
