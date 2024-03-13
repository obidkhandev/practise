import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/screens/animations/anim1.dart';
import 'package:practise/screens/animations/anim11.dart';
import 'package:practise/screens/animations/anim13.dart';
import 'package:practise/screens/animations/anim14.dart';
import 'package:practise/screens/animations/anim4.dart';
import 'package:practise/screens/animations/anim5.dart';
import 'package:practise/screens/home/home_page.dart';
import 'package:practise/utils/route_name/route_name.dart';

import '../animations/anim10.dart';
import '../animations/anim12.dart';
import '../animations/anim2.dart';
import '../animations/anim6.dart';
import '../animations/anim7.dart';
import '../animations/anim8.dart';
import '../animations/anim9.dart';

class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return navigate(HomePage());
    }
    switch (settings.name) {
      case RouteName.home:
        return navigate(HomePage());
      case RouteName.anim1:
        return navigate(Animation1());
      case RouteName.anim2:
        return navigate(Animation2());
      case RouteName.anim4:
        return navigate(Animation4());
      case RouteName.anim5:
        return navigate(Animation5());
      case RouteName.anim6:
        return navigate(Animation6());
      case RouteName.anim7:
        return navigate(Animations7());
      case RouteName.anim8:
        return navigate(Animation8());
      case RouteName.anim9:
        return navigate(Animation9());
      case RouteName.anim10:
        return navigate(Animation10());
      case RouteName.anim11:
        return navigate(Animation11());
      case RouteName.anim12:
        return navigate(Animation12());
      case RouteName.anim13:
        return navigate(Animation13());
      case RouteName.anim14:
        return navigate(Animation14());

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
