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
          itemBuilder: (context, index) => new PlanetRow(_planets[index]),
          itemCount: _planets.length,
          padding: new EdgeInsets.symmetric(vertical: 16.0),
        ),
      ),
    );
  }
}

class PlanetRow extends StatelessWidget {

  final String _planet;

  PlanetRow(this._planet);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: new Card(
        child: new Container(
          alignment: Alignment.center,
          child: new Text(_planet),
          height: 50.0,
        ),
      ),

    );
  }
}