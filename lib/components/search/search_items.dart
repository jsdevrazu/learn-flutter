// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn/configs/colors.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            child: Center(
              child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/11/12/19/22/water-2943518__340.jpg"),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50\$/50 Gram",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 35,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "50 Gram",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14
                            ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
          ),
        ),
        Expanded(
          child: Container(
            height: 100,
          ),
        ),
      ],
    );
  }
}
