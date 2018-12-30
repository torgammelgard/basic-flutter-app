import 'package:flutter/material.dart';

import './planet_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        accentColor: Colors.purple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing title'),
        ),
        body: PlanetManager(startingPlanet: 'Saturn inject',),
      ),
    );
  }
}
