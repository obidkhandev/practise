import 'package:flutter/material.dart';

import 'my_items.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 330,
      pinned: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            // elevation: 40,
          ),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 20),
            icon: Icon(Icons.more_horiz),
          ),
        ),
      ],
      // backgroundColor:
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          // padding: EdgeInsets.only(top: 70, left: 12, right: 12),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Color(0xffF5F6FA),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80, left: 20),
                child: Text(
                  "Balances",
                  style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 140,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MyItems(usd: "\$", price: '585.00', balance: "USD"),
                    MyItems(usd: "€", price: '654.00', balance: "EUR"),
                    MyItems(usd: "\$", price: '585.00', balance: "GBP"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
