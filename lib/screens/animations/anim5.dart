import 'package:flutter/material.dart';

class Animation5 extends StatefulWidget {
  const Animation5({Key? key}) : super(key: key);

  @override
  State<Animation5> createState() => _Animation5State();
}

class _Animation5State extends State<Animation5> {
  double right = 120;
  double left = 100;
  double top = 250;
  double bottom = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500,
            width: 350,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: top,
                  left: left,
                  bottom: bottom,
                  right: right,
                  duration: Duration(seconds: 1),
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
                bottom = top;
                top = 100;
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
                    right = left;
                    left = 20;


                  });
                },
                icon: Icon(Icons.arrow_back, size: 30),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    left = right;
                    right = 20;

                  });
                },
                icon: Icon(Icons.arrow_forward, size: 30),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                top = bottom;
                bottom = 50;
              });
            },
            icon: Icon(Icons.arrow_circle_down_sharp, size: 30),
          ),
        ],
      ),
    );
  }
}
