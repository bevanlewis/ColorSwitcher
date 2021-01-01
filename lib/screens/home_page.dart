import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // Initializing variables
  AnimationController controller;
  Animation animation;
  Color startColor = Colors.green;
  Color endColor = Colors.blue;

  @override
  // Animation gets run when the app is launched
  void initState() {
    super.initState();

    // Controller
    controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );

    // Animation - Transition of one color to the other
    animation = ColorTween(
      begin: startColor,
      end: endColor,
    ).animate(controller);

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else {
    //     controller.forward();
    //   }
    // });

    // Helps rebuild the app with changing background and prints the changed values to console
    // Listener is called every time the value of the animation changes
    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor changes based on the values of animation which are also colors
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
                  controller.forward(from: 0.0);
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
