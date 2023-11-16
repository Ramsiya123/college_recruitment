import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String loginIdKey = 'loginId';

  static Future<void> saveData(String loginId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(loginIdKey, loginId);
  }

  static Future<String> getSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(loginIdKey) ?? '';
  }

  static Future<void> clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(loginIdKey);
  }

  static Future<bool> containsData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(loginIdKey);
  }
}
