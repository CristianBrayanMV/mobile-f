import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 23.0,
                      ),
                      Text(
                        'The New York Times',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        size: 23.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.black26,
                height: 0.8,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Update: FEBRARY 11 at 19:23',
                  ),
                ),
              ),
              Image.network(
                'https://images.pexels.com/photos/7868972/pexels-photo-7868972.jpeg?cs=srgb&dl=pexels-pavel-danilyuk-7868972.jpg&fm=jpg',
                width: double.infinity,
                height: 250.0,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 15.0),
                child: Column(
                  children: [
                    Text(
                      'Pelosi Wants To Win House, but Can  She Corral the Democrats?',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from',
                      style: TextStyle(fontSize: 18.0, color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from',
                      style: TextStyle(fontSize: 18.0, color: Colors.black26),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('26 ago',style: TextStyle(color: Colors.black26,fontSize: 20.0,),),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.bookmark_outline,size: 30.0,color: Colors.indigoAccent,),
                            Icon(Icons.file_upload_outlined,size: 30.0,color: Colors.indigoAccent,),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(height: 1.0,width: double.infinity,color: Colors.black12),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Analysis G.O.P. Squirms as Trump Veers Off Script With Abouse Remarks',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold,),
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
}
