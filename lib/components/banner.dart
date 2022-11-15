// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  final String bannerText;
  final String bannerTitle;
  final String bannerSmTitle;
  final String bannerImage;

  const HomeBanner({
    Key? key,
    required this.bannerText,
    required this.bannerTitle,
    required this.bannerSmTitle,
    required this.bannerImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(bannerImage))),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 120, bottom: 10),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade500,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          )),
                      child: Center(
                        child: Text(
                          bannerText,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              shadows: [
                                BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 10,
                                    offset: Offset(3, 3))
                              ]),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    bannerTitle,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.yellow[300],
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      bannerSmTitle,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
