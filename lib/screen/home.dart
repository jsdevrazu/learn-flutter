// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:learn/components/drawer_menu.dart';
import 'package:learn/components/home/banner.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/components/home/home_title.dart';
import 'package:learn/components/home/menu_list.dart';
import 'package:learn/components/home/shop_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: Drawer(child: DrawerMenu()),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.grey.shade200,
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.grey.shade200,
              child: Icon(
                Icons.shopping_cart,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 175,
              child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    HomeBanner(
                      bannerText: "Mango",
                      bannerTitle: "30% Off",
                      bannerSmTitle: "All in vegetables products",
                      bannerImage:
                          "https://cdn.pixabay.com/photo/2017/06/09/16/39/carrots-2387394_960_720.jpg",
                    ),
                    HomeBanner(
                      bannerText: "Mango",
                      bannerTitle: "20% Off",
                      bannerSmTitle: "Fresh vegetables for our customers",
                      bannerImage:
                          "https://cdn.pixabay.com/photo/2016/11/02/16/51/broccoli-1792236__340.jpg",
                    ),
                    HomeBanner(
                      bannerText: "Mango",
                      bannerTitle: "50% Off",
                      bannerSmTitle: "Best healty vegetables",
                      bannerImage:
                          "https://cdn.pixabay.com/photo/2015/07/17/13/44/cucumbers-849269__340.jpg",
                    ),
                  ]),
            ),
            SizedBox(height: 25),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
              ),
            ),
            SizedBox(height: 20),
            HomeTitle(
              title: "Herbs Seasonis",
              smTitle: "View All",
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ShopCard(),
                  ShopCard(),
                  ShopCard(),
                ],
              ),
            ),
            SizedBox(height: 20),
            HomeTitle(
              title: "Fresh Vegeatble",
              smTitle: "View All",
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ShopCard(),
                  ShopCard(),
                  ShopCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
