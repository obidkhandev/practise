import 'package:flutter/material.dart';

class Animation12 extends StatefulWidget {
  const Animation12({super.key});

  @override
  State<Animation12> createState() => _Animation12State();
}

class _Animation12State extends State<Animation12>
    with TickerProviderStateMixin {
  late Animation<Color?> animationColor;
  late Animation<double> animationWith;
  late Animation<int?> animationPercentage;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationColor =
        ColorTween(begin: Colors.purpleAccent, end: Colors.yellow).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {});

    animationWith = Tween<double>(
      begin: 350.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});

    animationPercentage = IntTween(
      begin: 0,
      end: 99,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {});
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, _) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: animationColor.value,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(right: animationWith.value),
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Text(
                animationPercentage.value == 98
                    ? "Done"
                    : "${animationPercentage.value} %",
              ),
              ElevatedButton(
                  onPressed: () {
                    _animationController.forward();
                  },
                  child: Text("Animate"),),
            ],
          );
        },
      ),
    );
  }
}
