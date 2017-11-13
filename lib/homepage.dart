import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final String _title;

  HomePage(this._title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title)
      ),
      body: new Center(
        child: new FlutterLogo(
            size: 200.0,
        ),
      ),
    );
  }
}