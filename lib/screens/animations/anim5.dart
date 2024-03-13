import 'package:flutter/material.dart';

class Animation5 extends StatefulWidget {
  const Animation5({super.key});

  @override
  State<Animation5> createState() => _Animation5State();
}

class _Animation5State extends State<Animation5> {
  Alignment alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          SizedBox(
            height: 400,
            width: 350,
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: alignment,
                  // curve: Curves.bounceOut,
                  duration: Duration(seconds: 2),
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                alignment = Alignment.topCenter;
              });
            },
            icon: Icon(Icons.arrow_circle_up_outlined, size: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    alignment = Alignment.centerLeft;
                  });
                },
                icon: Icon(Icons.arrow_back, size: 30),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    alignment = Alignment.centerRight;
                  });
                },
                icon: Icon(Icons.arrow_forward, size: 30),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                alignment = Alignment.bottomCenter;
              });
            },
            icon: Icon(Icons.arrow_circle_down_sharp, size: 30),
          ),
        ],
      ),
    );
  }
}
