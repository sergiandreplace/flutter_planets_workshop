import 'package:flutter/material.dart';
import 'package:flutter_planets_workshop/planet.dart';

class PlanetPage extends StatelessWidget {
  Planet _planet;

  PlanetPage(Planet this._planet);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_planet.name),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Hero(
              tag: "planet_image_" + _planet.id.toString(),
              child: new Image.network(_planet.image)
            ),
            new Text(_planet.description)
          ]
        ),
      ),
    );
  }
}
