import 'package:flutter/material.dart';

class Animation10 extends StatefulWidget {
  const Animation10({super.key});

  @override
  State<Animation10> createState() => _Animation10State();
}

class _Animation10State extends State<Animation10>
    with TickerProviderStateMixin {
  late Animation<BorderRadius> animationBorderRadius;
  late Animation<Color> animationColor;
  late Animation<Border> animationBorder;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationBorderRadius = Tween<BorderRadius>(
            begin: BorderRadius.circular(70), end: BorderRadius.circular(10))
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )..addListener(() {
      setState(() {

      });
    })..addStatusListener((status) { });

    animationBorder = Tween<Border>(
        begin: Border.all(color: Colors.black,width: 1), end: Border.all(color: Colors.red,width: 20),)
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )..addListener(() {
      setState(() {

      });
    })..addStatusListener((status) { });

    animationColor = Tween<Color>(
      begin: Colors.yellow, end: Colors.blue,)
        .animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )..addListener(() {
      setState(() {

      });
    })..addStatusListener((status) { });
    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: animationColor.value,
                border: animationBorder.value,
          ),
        ),
      ),
    );
  }
}
