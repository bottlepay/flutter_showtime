import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_showtime/flutter_showtime.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_showtime');

  TestWidgetsFlutterBinding.ensureInitialized();
}
