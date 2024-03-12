import 'package:flutter/material.dart';

class MySliverDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    List<String> category = [
      "Vegetables",
      "Fruit",
      "Spice",
      "Ingridients",
      "Side Dishes"
    ];
    List<Color> colors = [
      Colors.blue,
      Colors.grey,
      Colors.purpleAccent,
      Colors.lightBlueAccent,
      Colors.purple.withOpacity(0.7),
    ];
    List<String> images = [
      "assets/images/Sayur-png 1.png",
      'assets/images/fruit 2.png',
      'assets/images/meat 1.png',
      'assets/images/meat 1.png',
      'assets/images/chicken-png 1.png',
    ];

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12.0),
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
          SizedBox(
            height: 100,

            child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colors[index].withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(images[index]),
                      ),
                      SizedBox(height: 5),
                      Text(category[index]),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 190.0;

  @override
  double get minExtent => 190.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
