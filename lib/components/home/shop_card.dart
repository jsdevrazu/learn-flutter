// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn/configs/colors.dart';
import 'package:learn/screen/product_overview.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 300,
      width: 200,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProductOverScreen()));
            },
            child: Container(
                height: 200,
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                child: Image.network(
                    "https://www.freepnglogos.com/uploads/vegetables-png/fruit-and-vegetables-basket-png-20.png")),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fresh Vegetable",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "50\$/50 Gram",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 6),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: const Size.fromHeight(40)),
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: textColor,
                    ),
                    label: Text(
                      "Add to cart",
                      style: TextStyle(color: textColor),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
