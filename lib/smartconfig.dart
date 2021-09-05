import 'dart:async';

import 'package:flutter/services.dart';

class Smartconfig {
  static const MethodChannel _channel =
      const MethodChannel('smartconfig');

  static Future start(String ssid, String bssid, String pass) async {
    try {
      Map<String, dynamic> rm = new Map<String, dynamic>.from(await (_channel.invokeMethod('start', {"ssid": ssid, "bssid": bssid, "pass": pass}) as FutureOr<Map<dynamic, dynamic>>));
      return rm;
    } catch(err){
      print("Error, $err");
      return null;
    }
    
  }
}
