import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_showtime/flutter_showtime.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var showtimeEnabled = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('flutter_showtime'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Center(
                child: RaisedButton(
                  onPressed: () async {
                    if (showtimeEnabled) {
                      await FlutterShowtime.disable();
                      setState(() => showtimeEnabled = false);
                    } else {
                      await FlutterShowtime.enable();
                      setState(() => showtimeEnabled = true);
                    }
                  },
                  child: Text('ShowTime Enabled: $showtimeEnabled'),
                ),
              ),
              Spacer(),
            ],
          )),
    );
  }
}
