// ignore_for_file: dead_code

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefIntarface {
  Future<bool?> readBool(String key);
  Future<bool?> writeBool(String key, bool value);
  Future<Map<String, dynamic>?> readObject(String key);
  Future<bool> writeObject(String key, Map<String, dynamic> value);
  Future<bool> remove(String key);
}

class SharedPref implements SharedPrefIntarface {
  @override
  Future<bool?> readBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  @override
  Future<bool?> writeBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.setBool(key, value);
  }

  @override
  Future<Map<String, dynamic>?> readObject(String key) async {
    final pref = await SharedPreferences.getInstance();
    String? encodedMap = pref.getString(key);
    if (encodedMap != null) {
      Map<String, dynamic> decodedMap = json.decode(encodedMap);
      return decodedMap;
    }
    //  prende in stringa e convert in mappa

    return null;
  }

  @override
  Future<bool> writeObject(String key, Map<String, dynamic> value) async {
    final prefs = await SharedPreferences.getInstance();
    String encodedMap = json.encode(value);
    // prendo la mappa e converto in string

    return prefs.setString(key, encodedMap);

    //prefs.setString(key, encodedMap)  ;
  }

  @override
  Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.remove(key);
    return result;
  }
}
