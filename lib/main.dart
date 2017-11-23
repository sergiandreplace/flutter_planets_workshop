import 'package:flutter/material.dart';
import 'package:flutter_planets_workshop/homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final _appName = 'Flutter Planets';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _appName,
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new HomePage(_appName),
    );
  }
}
