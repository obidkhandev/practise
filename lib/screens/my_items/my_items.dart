import 'package:flutter/material.dart';

class MyItems extends StatelessWidget {
  final String usd;
  final String price;
  final String balance;
  const MyItems({super.key, required this.usd, required this.price, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139,
      width: 130,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            width: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: Bo,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 3),
                    // spreadRadius: 3,
                    blurRadius: 3,
                  )
                ]),
            child: Text(
              usd,
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(height: 15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "$price\n",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                TextSpan(
                  text: "$balance Balance",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
