import 'dart:math';

import 'package:flutter/material.dart';

class Animation4 extends StatefulWidget {
  const Animation4({Key? key}) : super(key: key);

  @override
  State<Animation4> createState() => _Animation4State();
}

class _Animation4State extends State<Animation4>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> animationSize;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    animation = Tween<double>(begin: 0, end: 4 * pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        reverseCurve: Curves.linear,
      ),
    )..addListener(() {
      setState(() {});
    })..addStatusListener((status) { });

    animationSize = Tween<double>(begin: 30, end: 70).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
      ),
    )..addListener(() {
      setState(() {});
    })..addStatusListener((status) { });

    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(
          angle: animation.value,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircle(Colors.red),
                  _buildCircle(Colors.blue),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircle(Colors.green),
                  _buildCircle(Colors.yellow),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircle(Color color) {
    return Container(
      height: animationSize.value,
      width: animationSize.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
