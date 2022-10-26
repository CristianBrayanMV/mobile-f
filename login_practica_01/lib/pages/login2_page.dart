import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_practica_01/pages/init_page.dart';
import 'package:login_practica_01/widgets/circle_widget.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                right: -130,
                top: -110,
                child: CircleWidget(
                  radius: height * 0.22,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                top: 40,
                child: CircleWidget(
                  radius: 25.0,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                left: width * 0.83,
                top: height * 0.38,
                child: CircleWidget(
                  radius: 18.0,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
              Positioned(
                bottom: -120,
                left: -80,
                child: CircleWidget(
                  radius: 110.0,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.23,
                  ),
                  SizedBox(
                    width: 200.0,
                    child: Text(
                      "Create Your Account!",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Color(0xff5B4588),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff564293),
                      ),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff564293),
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffD94E8E),
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color(0xffD94E8E),
                                Color(0xffE98DB7),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffD94E8E).withOpacity(0.5),
                                blurRadius: 20.0,
                                offset: Offset(1, 10),
                              ),
                            ],
                          ),
                          height: 50.0,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InitPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
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
