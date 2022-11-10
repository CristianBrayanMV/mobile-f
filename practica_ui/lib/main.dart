
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practica_ui/pages/init_page.dart';
import 'package:practica_ui/utils.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: "UI - Future",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      home: InitPage(),
    );
  }
}





