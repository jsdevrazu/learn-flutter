// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            "Blance",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            "\$454545656",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // card number
              Text(
                "**** 3456",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "10/24",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}


