import 'package:flutter/material.dart';
import 'package:practise/utils/colors/app_colors.dart';
import 'package:practise/utils/style/text_style.dart';

class CategoryItem extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    int active = 0;
    List<String> category = ["Payments", "Food", "Services", "Rent"];
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Material(
                child: SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(children: [
                        SizedBox(width: 20),
                        ...List.generate(
                          4,
                              (index) => Ink(
                            decoration: active == index
                                ? BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(69),
                            )
                                : null,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(69),
                              onTap: () {
                                active = index;
                                setState(() {});
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: active == index
                                            ? AppColors.white
                                            : Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "${category[index]}",
                                      // styl
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.only(left: 42),
                child: Text("Today", style: AppTextStyle.interBold.copyWith(fontSize: 26,color: Colors.black),),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 125;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
