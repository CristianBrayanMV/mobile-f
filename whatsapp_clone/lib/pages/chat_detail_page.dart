import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/models/chat_message_model.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {


  final TextEditingController _chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 22,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/12365122/pexels-photo-12365122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez sadsads asdsad asdsd",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "Last seen today 2:20 PM",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          //Fondo
          Container(
            color: Colors.black.withOpacity(0.09),
          ),


          ListView.builder(
            itemCount: chatsMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: chatsMessageList[index].messageType == "me"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 6.0,
                  ),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6.0),
                  decoration: BoxDecoration(
                    color: chatsMessageList[index].messageType == "me"
                        ? Color(0xffE3FFC4)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0),
                      topRight: chatsMessageList[index].messageType == "me"
                          ? Radius.circular(0)
                          : Radius.circular(14.0),
                      topLeft: chatsMessageList[index].messageType == "me"
                          ? Radius.circular(14.0)
                          : Radius.circular(0.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          offset: const Offset(4, 4),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Text(
                    chatsMessageList[index].messageContent,
                  ),
                ),
              );
            },
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _chatController,
                      decoration: InputDecoration(
                        hintText: "Type message",
                        hintStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied_alt,
                          size: 30.0,
                          color: Colors.black45,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file,
                                size: 30,
                                color: Colors.black45,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                          ],
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      ChatMessageModel chat = ChatMessageModel(
                        messageContent: _chatController.text,
                        messageType: "me",
                      );

                      chatsMessageList.add(chat);

                      _chatController.clear();
                      // chatsMessageList.add(ChatMessageModel(
                      //   messageContent: "Prueba directa",
                      //   messageType: "other",
                      // ));

                      setState(() {});

                    },
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff00887B),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}