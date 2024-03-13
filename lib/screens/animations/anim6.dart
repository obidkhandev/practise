import 'package:flutter/material.dart';

class Animation6 extends StatefulWidget {
  const Animation6({super.key});

  @override
  State<Animation6> createState() => _Animation6State();
}

class _Animation6State extends State<Animation6> {
  bool isBigger = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                height: 200,
                width: 200,
                duration: const Duration(seconds: 2),
                curve: Curves.linear,
                decoration: BoxDecoration(
                    color : isBigger ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    ),
                    border: Border.all(
                        width: 1,
                        color : Colors.black
                    )
                ),
                child: const FlutterLogo(),
              ),
            ),
            TextButton(
                onPressed: () {
                  isBigger = !isBigger;
                  setState(() {});
                },
                child: Text("Press me"))
          ],
        ));
  }
}
