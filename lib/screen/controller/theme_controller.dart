import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();
    getChangeModeValue();
  }

  getChangeModeValue() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool("isDarkMode") ?? false;
  }

  Future changeThemeHandler(bool value) async {
    isDarkMode.value = value;
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("isDarkMode", isDarkMode.value);
  }
}
