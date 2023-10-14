import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPreference {
  static const String _isFirstTimeKey = 'isFirstTimeLaunch';

  Future<bool> isFirstTimeLaunch() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isFirstTimeKey) ?? true;
  }

  Future<void> setFirstTimeLaunch(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isFirstTimeKey, value);
  }
}

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

class Recordarme {
  static late SharedPreferences _prefs;

  Recordarme recordarme = Recordarme();

  static bool _recordarme = false;
  static String _email = '';
  static String _password = '';
  Recordarme() {
    init();
  }
// inicia preference
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get isRecordarme {
    return _prefs.getBool('recordarme') ?? _recordarme;
  }

  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static String get password {
    return _prefs.getString('password') ?? _password;
  }

//aca setea los ccambios
  static set isRecordarme(bool value) {
    _recordarme = value;
    _prefs.setBool('recordarme', value);
  }

  static set email(String value) {
    _email = value;
    _prefs.setString('email', value);
  }

  static set password(String value) {
    _password = value;
    _prefs.setString('password', value);
  }
}
