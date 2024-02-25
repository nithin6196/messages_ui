// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messages_user_interface/dummy_db.dart';

class ActiveList extends StatelessWidget {
  const ActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(DummyDb.activeList[index]["profile_pic"]),
                  ),
                  Positioned(
                      top: 2,
                      right: 2,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ))
                ],
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 15,
              ),
          itemCount: DummyDb.activeList.length),
    );
  }
}
