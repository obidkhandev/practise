import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  const Animation1({super.key});

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  double padWidth = 20;

  void _updatePadding() {
    setState(() {
      padWidth = padWidth == 20.0? 100.0: 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Padding",),
      ),
      body: AnimatedPadding(
        padding: EdgeInsets.symmetric(horizontal: padWidth),
        duration: Duration(seconds: 2),
        curve: Curves.easeInBack,
        child: GestureDetector(
          onTap: _updatePadding,
          child: Center(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
