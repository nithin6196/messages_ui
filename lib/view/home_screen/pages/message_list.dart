// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messages_user_interface/view/chat_screen/chat_screen.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key, required this.chatMap});
  final Map chatMap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatScreen(
                chatMap: chatMap,
              );
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.2),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(chatMap["profile_pic"]),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(chatMap["name"]),
                Text(
                  chatMap["last_message"],
                  style: TextStyle(
                      color:
                          chatMap["count"] == 0 ? Colors.black : Colors.blue),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12:50"),
                Visibility(
                  visible: chatMap["count"] > 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.blue,
                    child: Text(
                      chatMap["count"].toString(),
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
