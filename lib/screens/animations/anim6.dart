import 'package:flutter/material.dart';

class Animation6 extends StatefulWidget {
  const Animation6({super.key});

  @override
  State<Animation6> createState() => _Animation6State();
}

class _Animation6State extends State<Animation6>
    with SingleTickerProviderStateMixin {
  late Animation<Decoration> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = DecorationTween(
      begin: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(offset: Offset(4, 4)),
          ]),
      end: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
    ).animate(
        CurvedAnimation(parent: animationController, curve: Curves.ease))
      ..addListener(() {
        setState(() {});
      })..addStatusListener((status) { });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: DecoratedBoxTransition(
              decoration: animation,
              child: Container(
                height: 200,
                width: 200,
                decoration: animation.value,
                child: FlutterLogo(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (animationController.status == AnimationStatus.completed) {
                animationController.reset();
              }else{
                animationController.forward();
              }
            },
            child: Text("On Tap"),
          ),
        ],
      ),
    );
  }
}
