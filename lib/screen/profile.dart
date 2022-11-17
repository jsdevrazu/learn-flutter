// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:learn/components/drawer_menu.dart';
import 'package:learn/components/profile/profile_list.dart';
import 'package:learn/configs/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: Drawer(child: DrawerMenu()),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(fontSize: 18, color: textColor),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Container(
                height: 548,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
                decoration: BoxDecoration(
                    color: mainBg,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Razu Islam",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: textColor),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "example@gmail.com",
                                    style: TextStyle(
                                        fontSize: 14, color: textColor),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: primaryColor,
                                  child: CircleAvatar(
                                    radius: 12,
                                    child: Icon(
                                      Icons.edit,
                                      color: primaryColor,
                                      size: 14,
                                    ),
                                    backgroundColor: mainBg,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    ProfileList(icon: Icons.shop_outlined, title: "My Orders"),
                    ProfileList(icon: Icons.location_on_outlined, title: "My Delivery Address"),
                    ProfileList(icon: Icons.person_outline, title: "Refer A Friends"),
                    ProfileList(icon: Icons.file_copy_outlined, title: "Terms & Conditions"),
                    ProfileList(icon: Icons.policy_outlined, title: "Privacy & Policy"),
                    ProfileList(icon: Icons.add_chart_outlined, title: "About"),
                    ProfileList(icon: Icons.exit_to_app_outlined, title: "Logout"),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: mainBg,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
