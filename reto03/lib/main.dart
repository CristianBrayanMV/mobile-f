import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.network(
              'https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 260.0,
                        child: const ListTile(
                          contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                          title: Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),
                          ),
                          subtitle: Text("Kandersteg, Switzerland",style: TextStyle(fontSize: 16.0),),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.deepOrange, size: 25.0),
                          Text(
                            '41',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100.0,
                        child: const ListTile(
                          title: Icon(
                            Icons.phone,
                            color: Colors.lightBlue,
                          ),
                          subtitle: Text(
                            "CALL",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        child: const ListTile(
                          title: Icon(
                            Icons.route,
                            color: Colors.lightBlue,
                          ),
                          subtitle: Text(
                            "ROUTE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        child: const ListTile(
                          title: Icon(
                            Icons.share,
                            color: Colors.lightBlue,
                          ),
                          subtitle: Text(
                            "SHARE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
                      style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ),
  );
}
