
import 'package:qr_practica/providers/db_provider.dart';
import 'package:qr_practica/providers/example_provider.dart';
import 'package:qr_practica/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ExampleProvider()),
        ChangeNotifierProvider(create: (_) => DBProvider()),
      ],
      child: MaterialApp(
        title: "QRApp",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.sourceSansProTextTheme(),
        ),
        home: HomePage(),
      ),
    );
  }
}

