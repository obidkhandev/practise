import 'package:flutter/material.dart';

class Animation10 extends StatefulWidget {
  const Animation10({Key? key}) : super(key: key);

  @override
  State<Animation10> createState() => _Animation10State();
}

class _Animation10State extends State<Animation10>
    with TickerProviderStateMixin {
  late Animation<BorderRadius?> animationBorderRadius;
  late Animation<Color?> animationColor;
  late Animation<Border?> animationBorder;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationBorderRadius = BorderRadiusTween(
        begin: BorderRadius.circular(100), end: BorderRadius.circular(10))
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );

    animationBorder = BorderTween(
      begin: Border.all(color: Colors.black, width: 1),
      end: Border.all(color: Colors.red, width: 20),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );

    animationColor = ColorTween(
      begin: Colors.yellow,
      end: Colors.blue,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );

    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: animationColor.value,
                border: animationBorder.value,
                borderRadius: animationBorderRadius.value,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
