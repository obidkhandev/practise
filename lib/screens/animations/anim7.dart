import 'dart:math';

import 'package:flutter/material.dart';

class Animations7 extends StatefulWidget {
  const Animations7({super.key});

  @override
  State<Animations7> createState() => _Animations7State();
}

class _Animations7State extends State<Animations7>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        // reverseCurve: Curves.linear,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Transform.rotate(
              angle: animation.value,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
