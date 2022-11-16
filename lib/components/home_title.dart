// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  final String title;
  final String smTitle;

  const HomeTitle({Key? key, required this.title, required this.smTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            smTitle,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
