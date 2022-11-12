import 'package:flutter/cupertino.dart';

import '../database/cache.dart';

abstract class ICacheWithModel {
  Map<String, dynamic> assignJson();
  Future<Map<String, dynamic>> toJson() async {
    final ICache cache = ResponseCache();
    final Map<String, dynamic> cachedMap = await cache.get('response');
    final Map<String, dynamic> map = <String, dynamic>{
      ...cachedMap,
      ...assignJson()
    };
    debugPrint('Cache With Model');
    debugPrint(map.toString());
    return map;
  }
}
