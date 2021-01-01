import 'package:flutter/material.dart';
import 'dart:math';
import 'package:color_switcher/colors.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  Color color = Colors.transparent;
  int baseColor;
  int swatchColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor changes based on the values of animation which are also colors
        backgroundColor: color,
        body: SafeArea(
          child: Center(
            // Todo: Refactor code
            child: FlatButton(
              onPressed: () {
                baseColor = Random().nextInt(ColorList.length);
                setState(() {
                  color = ColorList[baseColor];
                });
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: Colors.red, width: 5.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Click Me',
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
