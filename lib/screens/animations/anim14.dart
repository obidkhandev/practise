import 'package:flutter/material.dart';

class Animation14 extends StatefulWidget {
  const Animation14({super.key});

  @override
  State<Animation14> createState() => _Animation14State();
}

class _Animation14State extends State<Animation14>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Color?> animationColor;
  late Animation<double> animationSize;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationColor = ColorTween(begin: Colors.purpleAccent, end: Colors.green)
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});

    animationSize = Tween<double>(begin: 70, end: 10).animate(
        CurvedAnimation(parent: animationController, curve: Curves.linear))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});

    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, _) {
          return Center(
            child: Container(
              // color: Colors.red,
              height: 200,
              width: 200,
              padding: EdgeInsets.all(animationSize.value),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Container(
                // height: animationSize.value,
                // width: animationSize.value,
                decoration: BoxDecoration(
                  color: animationColor.value,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
