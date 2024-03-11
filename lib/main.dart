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
  "Behance Project",
  "Uber Monthly",
  "Uber Monthly",
  "ATM Withdraws",
  "Transfer Money",
  "Transfer Money",
  "Transfer Money",
];

List<String> itemMoney = [
  "\$320",
  "\$320",
  "\$650",
  "\$650",
  "\$330",
  "\$100",
  "\$100",
  "\$100",
];
List<String> itemDate = [
  "23rd march 2021",
  "23rd march 2021",
  "04th february 2021",
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
          SliverAppBar(
            expandedHeight: 330,
            pinned: true,
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
                padding: EdgeInsets.only(top: 70, left: 12, right: 12),
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
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Today",
                    style: AppTextStyle.interRegular
                        .copyWith(color: Colors.black, fontSize: 22)),
              ),
              ...List.generate(itemName.length, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 62,
                        width: 76,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(4, 4),
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 10),
                            ]),
                      ),
                      SizedBox(width: 10),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: itemName[index] + '\n',
                              style: AppTextStyle.interSemiBold
                                  .copyWith(color: Colors.black, fontSize: 18),
                          ),
                          TextSpan(
                            text: itemDate[index],
                            style: AppTextStyle.interSemiBold
                                .copyWith(color: Colors.grey, fontSize: 16),
                          ),
                        ]),
                      ),
                      Spacer(),
                      Text(itemMoney[index],style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                );
              })
            ]),
          )
        ],
      ),
    );
  }
}
