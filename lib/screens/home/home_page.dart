import 'package:flutter/material.dart';
import 'package:practise/utils/route_name/route_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> customs = [
    RouteName.flag,
    RouteName.snowMan,
    RouteName.mood,
    RouteName.wave,
  ];
  List<String> customName = ["UZB FLAG", "Snow Man", "Mood","Wave"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Customs"),
      ),
      body: ListView.builder(
        itemCount: customs.length,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              Navigator.pushNamed(context, customs[index]);
            },
            child: Text(
              customName[index],
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          );
        },
      ),
    );
  }
}
