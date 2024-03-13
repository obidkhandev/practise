import 'package:flutter/material.dart';
import 'package:practise/utils/route_name/route_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Animations"),
      ),
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim1);
            },
            child: Text(
              "Animation 1",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim2);
            },
            child: Text(
              "Animation 2",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim4);
            },
            child: Text(
              "Animation 4",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim5);
            },
            child: Text(
              "Animation 5",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim6);
            },
            child: Text(
              "Animation 6",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim7);
            },
            child: Text(
              "Animation 7",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim8);
            },
            child: Text(
              "Animation 8",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.anim9);
            },
            child: Text(
              "Animation 9",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
