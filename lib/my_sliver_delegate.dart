import 'package:flutter/material.dart';

class MySliverDelegate extends SliverPersistentHeaderDelegate{

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    List<String> category = [
      "Payments",
      "Food",
      "Services",
      "Rent"
    ];
    int _selectedIndex = 0;
    return ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
      return TextButton(onPressed: (){

      }, child: Text("${category[index]}",style: TextStyle(color: _selectedIndex == index? Colors.blue: Colors.green),),);
    });


  }

  @override
  double get maxExtent => 40.0;

  @override
  // TODO: implement minExtent
  double get minExtent => 40.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
  return true;
  }
}