// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn/components/home/menu_list.dart';
import 'package:learn/configs/colors.dart';
import 'package:learn/screen/profile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              CircleAvatar(
                backgroundColor: mainBg,
                radius: 43,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: primaryColor,
                ),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Guest"),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                        onPressed: () => print("click"), child: Text("Login")),
                  )
                ],
              )
            ],
          )),
          MenuTitle(
            icon: Icons.home_outlined,
            title: "Home",
            onTap: () {},
          ),
          MenuTitle(
            icon: Icons.shopping_cart_outlined,
            title: "Review Cart",
            onTap: () {},
          ),
          MenuTitle(
            icon: Icons.person_outline,
            title: "My Profile",
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => ProfileScreen())));
            },
          ),
          MenuTitle(
            icon: Icons.notifications_outlined,
            title: "Notification",
            onTap: () {},
          ),
          MenuTitle(
            icon: Icons.star_outline,
            title: "Rating & Review",
            onTap: () {},
          ),
          MenuTitle(
            icon: Icons.favorite_outline,
            title: "Wishlist",
            onTap: () {},
          ),
          MenuTitle(
            icon: Icons.question_mark_outlined,
            title: "FAQ",
            onTap: () {},
          ),
          SizedBox(height: 20),
          Container(
            height: 350,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Support",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: textColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [Text("Call us:"), Text(" +8801739402788")],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [Text("Main us:"), Text(" info@devcoded.com")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
