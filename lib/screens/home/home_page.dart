import 'package:flutter/material.dart';
import 'package:practise/screens/my_items/app_bar.dart';
import 'package:practise/screens/my_items/sliver_list.dart';

import '../../my_sliver_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const MyAppBar(),
          SliverPersistentHeader(pinned: true, delegate: CategoryItem()),
          const MySliverList(),
        ],
      ),
    );
  }
}