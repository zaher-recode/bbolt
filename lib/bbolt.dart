import 'dart:async';

import 'package:flutter/services.dart';

class Bbolt {
  static const MethodChannel _channel =
      const MethodChannel('bbolt');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
