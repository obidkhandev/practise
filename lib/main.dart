import 'package:flutter/material.dart';
import 'package:practise/screens/home/viewModel/calculate_view_model.dart';
import 'package:practise/screens/route/routes.dart';
import 'package:practise/utils/route_name/route_name.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> CalculateViewModel()),

    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouteName.home,
      onGenerateRoute: AppRoute.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}


