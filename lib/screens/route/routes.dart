import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/screens/customs/flag.dart';
import 'package:practise/screens/customs/mood_painter.dart';
import 'package:practise/screens/customs/snowMan.dart';
import 'package:practise/utils/route_name/route_name.dart';

import '../home/home_page.dart';

class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return navigate(HomePage());
    }
    switch (settings.name) {
      case RouteName.home:
        return navigate(HomePage());
      case RouteName.flag:
        return navigate(MyFlag());
      case RouteName.snowMan:
        return navigate(SnowMan());
      case RouteName.mood:
        return navigate(Mood());

      default:
        return navigate(
          const Scaffold(
            body: Text("No screen"),
          ),
        );
    }
  }

  static navigate(Widget screen) {
    return MaterialPageRoute(builder: (context) => screen);
  }
}
