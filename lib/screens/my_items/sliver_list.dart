import 'package:flutter/material.dart';

import '../../utils/style/text_style.dart';

class MySliverList extends StatefulWidget {
   const MySliverList({super.key});

  @override
  State<MySliverList> createState() => _MySliverListState();
}

class _MySliverListState extends State<MySliverList> {
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

   List<String> images = [
     "assets/images/image 16 (1).png",
     "assets/images/image 16 (1).png",
     "assets/images/Rectangle 34 (1).png",
     "assets/images/Rectangle 43 (1).png",
     "assets/images/Rectangle 43 (1).png",
     "assets/images/Rectangle 43 (1).png",
     "assets/images/Rectangle 44 (1).png",
     "assets/images/Rectangle 44 (1).png",
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

  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildListDelegate([
        ...List.generate(itemName.length, (index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 62,
                  width: 76,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 4),
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 10),
                    ],
                  ),
                  child: Image.asset(images[index]),
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
                Text(
                  itemMoney[index],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        })
      ]),
    );
  }
}
