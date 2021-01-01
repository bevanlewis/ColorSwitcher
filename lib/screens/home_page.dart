import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.white,
              child: GestureDetector(
                child: Text(
                  'Click Me',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  print('This actually works');
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
