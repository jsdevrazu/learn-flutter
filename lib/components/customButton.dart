// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.iconImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade600, blurRadius: 20)
              ]),
          child: Center(
            child: Image(
              image: NetworkImage(iconImagePath),
            ),
          ),
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
