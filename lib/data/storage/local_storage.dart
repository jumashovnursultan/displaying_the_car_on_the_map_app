import 'dart:convert';

import 'package:nursultan_app/data/model/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  static LocalStorage? _instance;
  static LocalStorage get instance => _instance!;

  factory LocalStorage() => instance;

  LocalStorage._();

  static init() async {
    assert(_instance == null);
    _instance = await SharedPrefLocalStorageImpl._().init();
    return _instance!;
  }

  void setInt(String key, int value);
  void setDouble(String key, double value);
  void setBool(String key, bool value);
  void setString(String key, String value);
  void setStringList(String key, List<String> value);
  void setObject(String key, Object? value);

  bool? getBool(String key);
  int? getInt(String key);
  double? getDouble(String key);
  String? getString(String key);
  List<String>? getStringList(String key);
  dynamic getObject(String key);

  Token? get token {
    final map = getObject('token');
    return map != null ? Token.fromMap(map) : null;
  }

  set token(Token? token) => setObject('token', token?.toMap());
}

class SharedPrefLocalStorageImpl extends LocalStorage {
  SharedPreferences? _preferences;

  SharedPrefLocalStorageImpl._() : super._();

  Future<SharedPrefLocalStorageImpl> init() async {
    _preferences = await SharedPreferences.getInstance();

    return this;
  }

  @override
  void setInt(String key, int value) => _preferences?.setInt(key, value);
  @override
  void setDouble(String key, double value) =>
      _preferences?.setDouble(key, value);
  @override
  void setBool(String key, bool value) => _preferences?.setBool(key, value);
  @override
  void setString(String key, String value) =>
      _preferences?.setString(key, value);
  @override
  void setStringList(String key, List<String> value) =>
      _preferences?.setStringList(key, value);
  @override
  void setObject(String key, Object? value) =>
      _preferences?.setString(key, jsonEncode(value));

  @override
  bool? getBool(String key) => _preferences?.getBool(key);
  @override
  int? getInt(String key) => _preferences?.getInt(key);
  @override
  double? getDouble(String key) => _preferences?.getDouble(key);
  @override
  String? getString(String key) => _preferences?.getString(key);
  @override
  List<String>? getStringList(String key) => _preferences?.getStringList(key);
  @override
  dynamic getObject(String key) {
    final value = _preferences?.getString(key);
    if (value != null) return jsonDecode(value);
    return null;
  }
}
