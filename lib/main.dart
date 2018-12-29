import 'package:flutter/material.dart';

import './planet_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing title'),
        ),
        body: PlanetManager('Saturn inject'),
      ),
    );
  }
}
