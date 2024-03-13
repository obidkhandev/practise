import 'package:flutter/material.dart';

class Animation9 extends StatefulWidget {
  const Animation9({super.key});

  @override
  State<Animation9> createState() => _Animation9State();
}

class _Animation9State extends State<Animation9> {
  Alignment alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          alignment = Alignment.bottomRight;
        });
      },
        ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: AnimatedAlign(
          alignment: alignment,
          curve: Curves.bounceOut,
          duration: Duration(seconds: 2),
          child: Container(
            height: 50,
            width: 50,
            color: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}
