import 'package:flutter/material.dart';

class Planets extends StatelessWidget {
  final List<String> planets;

  Planets(this.planets);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: planets
            .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/saturn.jpg'),
                      Text(element)
                    ],
                  ),
                ))
            .toList());
  }
}
