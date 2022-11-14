// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_equal_for_default_values

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double blance;
  final int cardNumber;
  final int expiryDate;
  final int expiryYear;
  final color;

  const CustomCard(
      {Key? key,
      required this.blance,
      required this.cardNumber,
      required this.expiryDate,
      required this.color,
      required this.expiryYear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
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
              "\$ $blance",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card number
                Text(
                  "$cardNumber",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "$expiryDate / $expiryYear",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
