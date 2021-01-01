import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    // Controller
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // Animation
    animation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white,
    ).animate(controller);

    // Helps rebuild the app with changing background and prints the changed values to console
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: animation.value,
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
                  controller.forward();
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
