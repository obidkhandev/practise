import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  const Animation2({super.key});

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {

  TextStyle textStyle = TextStyle(color: Colors.blue,fontSize: 24);

  void updateTextStyle(){
    setState(() {
      textStyle = TextStyle(color: Colors.red,fontSize: 48);
    });

  }
  void repeatTextStyle(){
    setState(() {
      textStyle =  TextStyle(color: Colors.blue,fontSize: 24);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text Style"),
      ),
      body: Column(
        children: [
          AnimatedDefaultTextStyle(
            style: textStyle,
            curve: Curves.easeInQuart,
            duration: Duration(seconds: 2),
            child: Text("Hello Flutter"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed:
                  updateTextStyle,

                icon: Icon(Icons.play_arrow),
              ),
              IconButton(
                onPressed: repeatTextStyle,
                icon: Icon(Icons.repeat),
              ),
            ],
          )
        ],
      ),
    );
  }
}
