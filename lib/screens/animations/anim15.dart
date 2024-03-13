import 'package:flutter/material.dart';

class Animation3 extends StatefulWidget {
  const Animation3({super.key});

  @override
  State<Animation3> createState() => _Animation3State();
}

class _Animation3State extends State<Animation3> {

  bool isChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(duration: Duration(seconds: 2),
          child: Container(

          ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Change size"))
        ],
      ),
    );
  }
}
