import 'package:flutter/material.dart';
import 'package:flutter_planets_workshop/planet.dart';
import 'package:flutter_planets_workshop/planets_client.dart';

class HomePage extends StatefulWidget {

  final String _title;
  HomePage(this._title);

  @override
  _HomePageState createState() => new _HomePageState(_title);
}

class _HomePageState extends State<HomePage> {


  final PlanetsClient _planetsClient = new PlanetsClient();
  final _baseUrl = "https://flutter-planets-workshop.netlify.com/";
  final String _title;

  _HomePageState(this._title);

  List<Planet> _planets;


  @override
  void initState() {
    super.initState();
    _planetsClient
        .loadPlanets(_baseUrl)
        .then((planets) => setState(() => _planets = planets))
        .catchError((_) => debugPrint("Error loading planets"));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(_title)),
      body: new Container(
          child: _planets == null
              ? new PlanetsLoading()
              : new PlanetsList(_planets)),
    );
  }
}

class PlanetsLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.center,
      child: new CircularProgressIndicator(),
    );
  }
}


class PlanetsList extends StatelessWidget {
  final List<Planet> _planets;

  PlanetsList(this._planets);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, index) => new PlanetRow(_planets[index]),
      itemCount: _planets == null ? 0 : _planets.length,
      padding: new EdgeInsets.symmetric(vertical: 16.0),
    );
  }
}

class PlanetRow extends StatelessWidget {

  final Planet _planet;

  PlanetRow(this._planet);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: new Card(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Container(
              color: Colors.black,
              padding: new EdgeInsets.all(24.0),
              child: new Image.network(
                _planet.image,
                height: 100.0,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(16.0),
              child: new Text(
                _planet.name,
                style: new TextStyle(fontSize: 24.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
