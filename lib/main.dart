import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/my_sliver_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

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
          SliverAppBar(
            expandedHeight: 330,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              ),
            ],
            // backgroundColor:
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.only(top: 70,left: 12,right: 12),
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balances",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 120,
                              width: 100,
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
         SliverPersistentHeader(
           pinned: true,

           delegate: MySliverDelegate(),
         ),
          SliverList(delegate: SliverChildListDelegate([
            Text("Today",),
          ]),)
        ],
      ),
    );
  }
}
