import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise/my_sliver_delegate.dart';
import 'package:practise/utils/size/size_utils.dart';
import 'package:practise/utils/style/text_style.dart';

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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> itemName = [
  "Behance Project",
  "Uber Monthly",
  "ATM Withdraws",
  "Transfer Money",
  "Transfer Money",
  "Transfer Money",
];

List<String> itemMoney = [
  "\$320",
  "\$650",
  "\$330",
  "\$100",
  "\$100",
  "\$100",
];
List<String> itemDate = [
  "23rd march 2021",
  "04th february 2021",
  "BDT ACCOUNT",
  "INR ACCOUNT",
  "INR ACCOUNT",
  "INR ACCOUNT",
];
List<String> gridItem = [
  "assets/images/Sayur-png 1.png",
  'assets/images/meat 1.png',
  'assets/images/fruit 2.png',
  'assets/images/soup.webp',
  'assets/images/chicken-png 1.png',
  'assets/images/chicken-png 1.png',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 130,
            // pinned: true,
            floating: true,
            snap: true,
            title: Padding(
              padding: const EdgeInsets.only(right: 120),
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Hello, ",
                      ),
                      TextSpan(
                        text: "Fahmi\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                      TextSpan(
                        text: "Find The Right One For A Healthy Body",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.amber,
                  ),
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.only(top: 105, right: 12, left: 12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 300,
                      // height: 50,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintText: "Search",

                            // hintTextDirection: TextDirection.,
                            suffixIconColor: Colors.grey,
                            prefixIcon: Icon(Icons.search),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.settings,
                        color: Colors.amber,
                        size: 32,
                      ),
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        backgroundColor: Colors.purpleAccent.withOpacity(0.05),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Show All",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MySliverDelegate(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Deal",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/images/soup.webp"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Price",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "Show All",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,

              // mainAxisSpacing: 10.0,
              // crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: gridItem.length,

              (context, index) {
                return Container(
                  height: 200,
    margin:  EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      Container(
                        // height: 150,

                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(gridItem[index]),fit: BoxFit.cover),
                            color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
