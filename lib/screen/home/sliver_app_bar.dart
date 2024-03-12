import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 130,
      // pinned: true,
      floating: true,
      snap: true,
      title: Padding(
        padding: const EdgeInsets.only(right: 120),
        child: RichText(
          text: const TextSpan(
              style: TextStyle(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                  text: "Hello, ",
                ),
                TextSpan(
                  text: "Fahmi\n",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.amber),
                ),
                TextSpan(
                  text: "Find The Right One For A Healthy Body",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.amber,
            ),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 105, right: 12, left: 12),
          child: Row(
            children: [
              SizedBox(
                width: 300,
                // height: 50,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: "Search",

                      // hintTextDirection: TextDirection.,
                      suffixIconColor: Colors.grey,
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              ),
              SizedBox(width: 20),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.settings,
                  color: Colors.amber,
                  size: 32,
                ),
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.purpleAccent.withOpacity(0.05),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
