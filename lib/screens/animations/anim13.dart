import 'package:flutter/material.dart';

class Animation13 extends StatefulWidget {
  const Animation13({super.key});

  @override
  State<Animation13> createState() => _Animation13State();
}

class _Animation13State extends State<Animation13> {
  bool isSecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Container(
                color: isSecond ? Colors.green : Colors.yellow,
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: Text(
                  isSecond ? "This is Second" : "This is First",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    isSecond = !isSecond;
                  });
                },
                child: Text("Click here"))
          ],
        ),
      ),
    );
  }
}
