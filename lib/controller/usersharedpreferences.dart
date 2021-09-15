import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences {
  // initialize Shared Preferences
  static SharedPreferences? _preferences;

  static const _keyFirstName = 'First Name';
  static const _keyLastName = "Last Name";
  static const _keyMobileNumber = '';
  static const _keyPwd = '';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setFirstName(String firstName) async =>
      _preferences!.setString(_keyFirstName, firstName);

  static Future setLastName(String lastName) async =>
      _preferences!.setString(_keyLastName, lastName);

  static Future setMobileNumber(String mobileNumber) async =>
      _preferences!.setString(_keyMobileNumber, mobileNumber);

  static Future setPwd(String pwd) async =>
      _preferences!.setString(_keyPwd, pwd);

  static getFirstName() => _preferences!.getString(_keyFirstName);
  static getLastName() => _preferences!.getString(_keyLastName);
  static getMobileNumber() => _preferences!.getString(_keyMobileNumber);
  static getPwd() => _preferences!.getString(_keyPwd);
}
