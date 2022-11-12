import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ICache {
  ICache();

  Future<void> set(String key, Map<String, dynamic> value);
  Future<Map<String, dynamic>> get(String key);
  Future<void> delete(String key);
  Future<void> clear() async {
    final SharedPreferences sharedPref = await sharedPreferencesInit();
    await sharedPref.clear();
  }

  Future<SharedPreferences> sharedPreferencesInit() async =>
      SharedPreferences.getInstance();
  Future<Map<String, dynamic>> decodeValue(String value) async {
    Map<String, dynamic> decodedObject;
    try {
      decodedObject = await jsonDecode(value) as Map<String, dynamic>;
    } catch (e) {
      decodedObject = <String, dynamic>{};
    }
    return decodedObject;
  }

  String encodeValue(Map<String, dynamic> value) {
    String encodedValue = '';
    try {
      encodedValue = jsonEncode(value);
    } catch (e) {}

    return encodedValue;
  }
}

@LazySingleton(as: ICache)
class ResponseCache extends ICache {
  ResponseCache();

  @override
  Future<Map<String, dynamic>> get(String key) async {
    Map<String, dynamic> value;
    try {
      final SharedPreferences sharedPref = await sharedPreferencesInit();
      final String? stringValue = sharedPref.getString(key);
      value = await decodeValue(stringValue ?? '');
      debugPrint('Get cached Response');
      debugPrint(value.toString());
    } catch (e) {
      value = <String, dynamic>{};
    }
    return value;
  }

  @override
  Future<void> set(String key, Map<String, dynamic> value) async {
    try {
      final SharedPreferences sharedPref = await sharedPreferencesInit();
      await sharedPref.setString(key, encodeValue(value));
    } catch (e) {}
  }

  @override
  Future<void> delete(String key) async {
    try {
      final SharedPreferences sharedPref = await sharedPreferencesInit();
      await sharedPref.remove(key);
    } catch (e) {}
  }
}
