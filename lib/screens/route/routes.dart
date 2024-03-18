import 'package:flutter/material.dart';
import 'package:practise/utils/route_name/route_name.dart';
import '../home/home_page.dart';

class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return navigate(HomePage());
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
