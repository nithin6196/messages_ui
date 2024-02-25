// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:messages_user_interface/view/home_screen/pages/home_page.dart';
import 'package:messages_user_interface/view/home_screen/pages/message_page.dart';
import 'package:messages_user_interface/view/home_screen/pages/profile_page.dart';
import 'package:messages_user_interface/view/home_screen/pages/schedule_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexValue = 0;
  List pages = [HomePage(), SchedulePage(), MessagePage(), ProfilePage()];
  List pagetTitles = ["Home", "Schedule", "Messages", "Profile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left),
        title: Text(
          pagetTitles[indexValue],
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
      ),
      body: pages[indexValue],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexValue,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              indexValue = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.schedule), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: ""),
          ]),
    );
  }
}
