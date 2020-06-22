import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class FlutterShowtime {
  static const MethodChannel _channel = const MethodChannel('flutter_showtime');

  static Future<void> enable() async =>
      defaultTargetPlatform == TargetPlatform.iOS
          ? _channel.invokeMethod('enable')
          : null;
  static Future<void> disable() async =>
      defaultTargetPlatform == TargetPlatform.iOS
          ? _channel.invokeMethod('disable')
          : null;
}
