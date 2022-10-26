import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Init4Page extends StatelessWidget {
  const Init4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.pexels.com/photos/1625355/pexels-photo-1625355.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  height: 450.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: 450.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(.5),
                    ),
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 16.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(.5),
                    ),
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Sacramento",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "Pouya",
                      style: GoogleFonts.secularOne(
                        color: Colors.white,
                        fontSize: 45.0,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Color(0xff19A171),
                                size: 28.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "01 Dec 2021",
                                    style: TextStyle(
                                      color: Color(0xff19A171),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "7:00 PM",
                                    style: TextStyle(
                                      color: Color(0xff19A171),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xff19A171),
                                size: 28.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ace of Spodes",
                                    style: TextStyle(
                                      color: Color(0xff19A171),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Sacramento, CA",
                                    style: TextStyle(
                                      color: Color(0xff19A171),
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "About",
                      style: GoogleFonts.secularOne(
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 1,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200.0,
                          child: Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black],
                            ),
                          ),
                          width: double.infinity,
                          height: 200.0,
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: double.infinity,
                        height: 55.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy \$200",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff22E29D),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
