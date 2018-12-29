import 'package:flutter/material.dart';

import './planets.dart';

class PlanetManager extends StatefulWidget {
  final String startingPlanet;

  PlanetManager(this.startingPlanet);

  @override
  State createState() {
    return _PlanetManagerState();
  }
}

class _PlanetManagerState extends State<PlanetManager> {
  List<String> _planets = [];


  @override
  void initState() {
    _planets.add(widget.startingPlanet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('add planet'),
            onPressed: () {
              setState(() {
                _planets.add('Hardcoded planet');
                print(_planets);
              });
            },
          ),
        ),
        Planets(_planets)
      ],
    );
  }
}
