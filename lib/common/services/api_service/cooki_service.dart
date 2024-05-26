import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveCookie(String cookie) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('cookie', cookie);
}

Future<String?> getCookie() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('cookie');
}
