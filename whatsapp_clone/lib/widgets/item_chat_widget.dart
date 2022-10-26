import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/pages/chat_detail_page.dart';

class ItemChatWidget extends StatelessWidget {
  // String avatarUrl;
  // String username;
  ChatModel chatModel;

  ItemChatWidget({
    // required this.avatarUrl,
    // required this.username,
    required this.chatModel
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(chatModel.avatarUrl),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping == true ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0,
            color: chatModel.isTyping == true ? Color(0xff01C851) : Colors.black45,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12.0,
                color: chatModel.countMessage > 0 ? Color(0xff01C851) : Colors.black45,
              ),
            ),
            if (chatModel.countMessage > 0) Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xff01C851),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                chatModel.countMessage.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ) else SizedBox(),
          ],
        ),
      ),
    );
  }
}