import 'dart:async';
import 'dart:convert';

import 'package:flutter_planets_workshop/planet.dart';
import 'package:flutter/services.dart';

class PlanetsClient {
  Future<List<Planet>> loadPlanets(String baseUrl) async {
    var httpClient = createHttpClient();

    var response = await httpClient.read(baseUrl + "planets.json");

    List planets = JSON.decode(response)["planets"];

    return planets
      .map((jsonPlanet) => new Planet.fromJson(jsonPlanet, baseUrl))
      .toList();
  }
}