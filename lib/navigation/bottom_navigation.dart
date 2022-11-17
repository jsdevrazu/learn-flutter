// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  final Color iconColor;
  final Color backgroundColor;
  final Color color;
  final String title;
  final IconData iconData;

  const BottomNavigation({
    Key? key,
    required this.iconColor,
    required this.backgroundColor,
    required this.color,
    required this.title,
    required this.iconData,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: widget.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.iconData,
              size: 17,
              color: widget.iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.title,
              style: TextStyle(color: widget.color),
            )
          ],
        ),
      ),
    );
  }
}
