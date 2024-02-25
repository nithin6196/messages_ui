// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messages_user_interface/dummy_db.dart';
import 'package:messages_user_interface/view/home_screen/active_list.dart';
import 'package:messages_user_interface/view/home_screen/pages/message_list.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                prefixIconColor: Colors.black,
                suffixIconColor: Colors.black,
                hintText: "Search a Doctor",
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Active Now",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          ActiveList(),
          SizedBox(
            height: 25,
          ),
          Text(
            "Messages",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => MessagesList(
                    chatMap: DummyDb.chatList[index],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: DummyDb.chatList.length)
        ],
      ),
    );
  }
}
