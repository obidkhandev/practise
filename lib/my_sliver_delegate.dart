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
      "assets/images/f.webp",
      "assets/images/f.webp",
      "assets/images/i.png",
      "assets/images/s.webp",
      "assets/images/side.webp"
    ];

    return ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: Column(
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
            ),
          );
        });
  }

  @override
  double get maxExtent => 92.0;

  @override
  double get minExtent => 92.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
