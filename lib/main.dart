import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bgChanger",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Color> randomColors = [
    Colors.yellow,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.pink
  ];
  int index;
  Color colorNow = Colors.grey;

  void changecolor() {
    setState(() {
      index = Random().nextInt(randomColors.length);
      colorNow = randomColors[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: colorNow),
      child: FlatButton(
          onPressed: changecolor,
          child: Text(
            "Click me and Rave!",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          )),
    );
  }
}
