import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/13445734/pexels-photo-13445734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
              Positioned(
                bottom: -6,
                right: -6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff01C851),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            "My status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Tap to add status update"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0,),
          child: Text(
            "Recent updates",
            style: TextStyle(
              color: Color(0xff00AC8E),
              fontWeight: FontWeight.bold,
              fontSize: 14.0
            ),
          ),
        ),
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(3.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff00AC8E),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/3616207/pexels-photo-3616207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          title: Text(
            "Juan Manuel Lopez",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Hoy 10:00 a.m."),
        ),
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(3.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff00AC8E),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/3616207/pexels-photo-3616207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          title: Text(
            "Juan Manuel Lopez",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Hoy 10:00 a.m."),
        ),
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(3.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff00AC8E),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/3616207/pexels-photo-3616207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          title: Text(
            "Juan Manuel Lopez",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Hoy 10:00 a.m."),
        ),
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(3.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xff00AC8E),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/3616207/pexels-photo-3616207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          title: Text(
            "Juan Manuel Lopez",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Hoy 10:00 a.m."),
        ),

      ],
    );
  }
}