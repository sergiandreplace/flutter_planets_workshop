import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final String _title;
  final List<String> _planets = ["Mars", "Neptune", "Earth", "Venus", "Moon"];
  HomePage(this._title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_title)
      ),
      body: new Center(
        child: new ListView.builder(
          itemBuilder: (context, index) => new Text(_planets[index]),
          itemCount: _planets.length,
        ),
      ),
    );
  }
}