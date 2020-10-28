import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MaterialApp(
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var changedColor = Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: changedColor,
      appBar: AppBar(
          title: Text('Tap on screen and change color'),
          backgroundColor: Colors.blueGrey),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => setState(() {
          changedColor =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];
        }),
        child: Center(
          child: Text('Hey there',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
