// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
    required this.chatMap,
  });
  final Map chatMap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          chatMap["name"],
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            child: Icon(Icons.phone),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            child: Icon(Icons.videocam_sharp),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.2),
                    prefixIcon: Icon(Icons.mood),
                    hintText: "Write here",
                    suffixIcon: Icon(Icons.camera_alt_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              IconButton.filled(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                  Colors.blue,
                )),
                onPressed: () {},
                icon: Icon(Icons.send),
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
