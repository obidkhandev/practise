import 'package:flutter/material.dart';

class Animation8 extends StatefulWidget {
  const Animation8({super.key});

  @override
  State<Animation8> createState() => _Animation8State();
}

class _Animation8State extends State<Animation8> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = 0.1;
          });
        },
        child: const Icon(Icons.repeat),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 2),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
