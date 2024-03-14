import 'package:flutter/material.dart';
import 'package:practise/screen/home/sliver_grid.dart';
import 'my_sliver_delegate.dart';

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

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
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
                  const Text(
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
          MySliverGrid()
        ],
      ),
    );
  }
}