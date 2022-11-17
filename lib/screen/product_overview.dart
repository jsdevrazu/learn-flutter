// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:learn/configs/colors.dart';
import 'package:learn/navigation/bottom_navigation.dart';

enum SiginCharacter { fill, outline }

class ProductOverScreen extends StatefulWidget {
  const ProductOverScreen({super.key});

  @override
  State<ProductOverScreen> createState() => _ProductOverScreenState();
}

class _ProductOverScreenState extends State<ProductOverScreen> {
  SiginCharacter _character = SiginCharacter.fill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          BottomNavigation(
            backgroundColor: textColor,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: "Add To WishList",
            iconData: Icons.favorite_outline,
          ),
          BottomNavigation(
            backgroundColor: primaryColor,
            color: textColor,
            iconColor: Colors.white70,
            title: "Go To Cart",
            iconData: Icons.share_outlined,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Fresh Basil"),
                    subtitle: Text("\$50"),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.all(40),
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2016/08/26/21/16/carrot-juice-1623157__340.jpg"),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      "Available Option",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SiginCharacter.fill,
                              groupValue: _character,
                              onChanged: (value) {
                                setState(() {
                                  _character = value!;
                                });
                              },
                              activeColor: Colors.green[700],
                            )
                          ],
                        ),
                        Text("\$50"),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 17,
                                color: primaryColor,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(color: primaryColor),
                              )
                            ],
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
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About this product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.",
                    style: TextStyle(fontSize: 14, color: textColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
