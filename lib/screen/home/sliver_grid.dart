import 'package:flutter/material.dart';

class MySliverGrid extends StatefulWidget {
  const MySliverGrid({super.key});

  @override
  State<MySliverGrid> createState() => _MySliverGridState();
}

List<String> gridItem = [
  "assets/images/Sayur-png 1.png",
  'assets/images/meat 1.png',
  'assets/images/fruit 2.png',
  'assets/images/soup.webp',
  'assets/images/chicken-png 1.png',
];
List<String> gridItemName = [
  "Vegetables",
  "Tempe",
  "Meat",
  "Fruit",
  "Chicken",
  "Chicken",
];

class _MySliverGridState extends State<MySliverGrid> {
  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
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
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(gridItem[index]),
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(colors:  [
                      const Color(0xffF2F2F2),
                      const Color(0xffFFFFFF).withOpacity(0.5),
                      const Color(0xffF2F2F2),
                    ],),),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${gridItemName[index]}\n',style: TextStyle(color: Colors.black,fontSize: 16),
                            ),
                            TextSpan(
                              text: '${index+1} Kilograms',style: TextStyle(color: Colors.black,fontSize: 12),
                            ),
                          ]
                      ),
                    ),
                    Text('\$ ${(index+1) * 1000}',style:  const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          );

        },
      ),
    );
  }
}
