import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/widgets/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index){
        return ItemChatWidget(
          // avatarUrl: chats[index].avatarUrl,
          // username: chats[index].username,
          chatModel: chats[index],
        );
      },
    );
  }
}