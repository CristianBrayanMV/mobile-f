import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_practica_01/pages/login2_page.dart';
import 'package:login_practica_01/ui/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorLogin1,
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                top: -50,
                left: 50,
                child: Transform.rotate(
                  angle: pi / -3,
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                        color: kSecondaryColorLogin1,
                        borderRadius: BorderRadius.circular(14.0)),
                  ),
                ),
              ),
            ],
          ),
          //Formulario
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: kSecondaryColorLogin1.withOpacity(0.16),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.home_filled,
                        color: kSecondaryColorLogin1,
                        size: 38,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Let's log you in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Welcome back You're been missed!",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50.0,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFEA4335),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/google.svg',
                                  color: Colors.white),
                              label: Text(
                                "Google",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 50.0,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1877F2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/icons/facebook.svg',
                                color: Colors.white,
                              ),
                              label: Text(
                                "Facebook",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 16.0),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.white70),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 16.0),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.white70),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 16.0),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white70),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kSecondaryColorLogin1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login2Page(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sing up",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Don´t Have on Account",
                        style: TextStyle(color: Colors.white.withOpacity(0.4)),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Sign in",
                        style: TextStyle(
                          color: Color(0xff19578C),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
