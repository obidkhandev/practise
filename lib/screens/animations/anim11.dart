import 'package:flutter/material.dart';

class Animation11 extends StatefulWidget {
  const Animation11({super.key});

  @override
  State<Animation11> createState() => _Animation11State();
}

class _Animation11State extends State<Animation11> {
  TextStyle textStyle = TextStyle(color: Colors.black, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            style: textStyle,
            curve: Curves.decelerate,
            duration: const Duration(seconds: 3),
            child: const Text(
                "Hello welcome tutorial. This is basic animation Flutter"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                textStyle = TextStyle(color: Colors.black, fontSize: 41);
              });
            },
            child: Text("Bigger Font"),
          ),
        ],
      ),
    );
  }
}
