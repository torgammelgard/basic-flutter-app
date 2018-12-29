import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _planets = ['Saturn from list ok'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Amazing title'),
        ),
        body: Column(children: <Widget>[
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
          Column(
              children: _planets
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/saturn.jpg'),
                            Text(element)
                          ],
                        ),
                      ))
                  .toList())
        ]),
      ),
    );
  }
}
