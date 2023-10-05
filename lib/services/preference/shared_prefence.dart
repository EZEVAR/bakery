import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static String _token = '';

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get token {
    return _prefs.getString('token') ?? _token;
    //if (_prefs == null) throw Exception("Prefs not initialized");
  }

  static set token(String token) {
    _token = token;
    _prefs.setString('Token', token);
  }
}
